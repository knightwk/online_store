import re
from datetime import datetime, timedelta

from rest_framework import serializers
from rest_framework.validators import UniqueValidator

from user.models import User, VerifyCode


# 此处使用Serializer是因为这里仅使用个别字段，
# 不需要在使用ModelSerializer去继承整个model
# 只有当model中的大多数字段都需被使用时才使用ModelSerializer
class SmsSerializer(serializers.Serializer):
    mobile = serializers.CharField(max_length=11)

    # 验证手机号码
    def validate_mobile(self, value):
        if User.objects.filter(mobile=value).exists():
            raise serializers.ValidationError("此手机号码已注册，请直接登录！")

        if not re.match(r'^1[356789]\d{9}$', value):
            raise serializers.ValidationError("此手机号码格式错误！")
        return value


class UserRegisterSerializer(serializers.ModelSerializer):
    # 1.考虑code的有效性
    # 2.完成create添加，添加4项
    code = serializers.CharField(max_length=6,
                                 required=True,
                                 min_length=6,
                                 error_messages={
                                     "required": "验证码不允许为空！",
                                     "max_length": "验证码长度必须为6！",
                                     "min_length": "验证码长度必须为6！",
                                 },
                                 write_only=True, )

    def validate_code(self, value):
        ve = VerifyCode.objects.filter(code=value, mobile=self.initial_data['username'])
        if ve.exists():
            verifycode = ve.first()
            # 验证时间有效性
            bf_time = datetime.now() - timedelta(minutes=600)
            if bf_time > verifycode.send_time:
                raise serializers.ValidationError("验证码过期！")
        else:
            raise serializers.ValidationError("验证码无效！")
        return value

    username = serializers.CharField(required=True,
                                     allow_blank=False,
                                     validators=[UniqueValidator(queryset=User.objects.all(), message="此用户名已经存在！")], )

    class Meta:
        model = User
        # 方式一：后端删除字段mobile
        fields = ['username', 'password', 'code']
        # 方式二：前后端沟通，提交请求时传递mobile参数
        # fields = ['username', 'password', 'mobile', 'code']

    def validate(self, attrs):
        attrs['mobile'] = attrs['username']
        print(attrs)
        del attrs['code']
        return attrs
