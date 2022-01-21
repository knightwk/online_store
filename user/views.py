from django.contrib.auth.hashers import make_password
from django.shortcuts import render

# Create your views here.
from rest_framework.mixins import CreateModelMixin
from rest_framework.response import Response
from rest_framework.viewsets import GenericViewSet
from rest_framework import status
from user.models import VerifyCode, User
from user.serializers import SmsSerializer, UserRegisterSerializer
from user.utils import send_message


class SmsViewSet(CreateModelMixin, GenericViewSet):
    queryset = VerifyCode.objects.all()
    serializer_class = SmsSerializer

    # 重写create方法
    # def create(self, request, *args, **kwargs):
    #     serializer = self.get_serializer(data=request.data)
    #     serializer.is_valid(raise_exception=True)
    #     self.perform_create(serializer)
    #     headers = self.get_success_headers(serializer.data)
    #     return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)
    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        mobile = serializer.validated_data['mobile']
        code = send_message(mobile)
        verify_code = VerifyCode.objects.create(mobile=mobile, code=code)
        if verify_code:
            return Response(data=serializer.data, status=status.HTTP_201_CREATED)
        else:
            return Response(data={"msg": "发送验证码失败！"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class UserRegisterViewSet(CreateModelMixin, GenericViewSet):
    queryset = User.objects.all()
    serializer_class = UserRegisterSerializer

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        username = serializer.validated_data['username']
        password = serializer.validated_data['password']
        password = make_password(password)
        user = User.objects.create(username=username,
                                   password=password,
                                   mobile=username, )
        if user:
            return Response(data=serializer.data, status=status.HTTP_201_CREATED)
        else:
            return Response(data={"msg": "注册失败！"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def perform_create(self, serializer):
        serializer.save()
