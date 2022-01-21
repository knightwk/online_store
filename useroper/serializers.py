from rest_framework import serializers
from rest_framework.fields import CurrentUserDefault
from rest_framework.validators import UniqueTogetherValidator

from goods.serializers import GoodsSerializer
from useroper.models import UserFav, UserLeavingMessage, UserAddress, User


class UserFavSerializer(serializers.ModelSerializer):
	user = serializers.HiddenField(default=CurrentUserDefault())

	# id = serializers.IntegerField(read_only=True)

	class Meta:
		model = UserFav
		fields = ['id', 'user', 'goods']
		validators = [UniqueTogetherValidator(queryset=UserFav.objects.all(),
											  fields=('user', 'goods'),
											  message='此商品已收藏')]


class UserFavListSerializer(serializers.ModelSerializer):
	goods = GoodsSerializer()

	class Meta:
		model = UserFav
		fields = ['goods', ]


# 留言
class UserLeavingMessageSerializer(serializers.ModelSerializer):
	user = serializers.HiddenField(default=CurrentUserDefault())

	class Meta:
		model = UserLeavingMessage
		fields = '__all__'


# 收货地址
class UserAddressSerializer(serializers.ModelSerializer):
	user = serializers.HiddenField(default=CurrentUserDefault())

	class Meta:
		model = UserAddress
		fields = '__all__'


# 个人信息
class UserInfoSerializer(serializers.ModelSerializer):
	class Meta:
		model = User
		fields = ['last_name', 'birthday', 'gender', 'email', 'mobile', ]
