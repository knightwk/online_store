from django.shortcuts import render

# Create your views here.
from rest_framework import status
from rest_framework.authentication import BasicAuthentication, SessionAuthentication
from rest_framework.mixins import CreateModelMixin, RetrieveModelMixin, ListModelMixin, DestroyModelMixin, \
	UpdateModelMixin
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.viewsets import GenericViewSet, ModelViewSet
from rest_framework_jwt.authentication import JSONWebTokenAuthentication

from user.models import User
from useroper.models import UserFav, UserLeavingMessage, UserAddress
from useroper.serializers import UserFavSerializer, UserFavListSerializer, UserLeavingMessageSerializer, \
	UserAddressSerializer, UserInfoSerializer


class UserFavView(CreateModelMixin, RetrieveModelMixin, ListModelMixin, DestroyModelMixin, GenericViewSet):
	# 局部添加
	authentication_classes = (BasicAuthentication, SessionAuthentication, JSONWebTokenAuthentication)
	permission_classes = (IsAuthenticated,)

	# 查询用户的收藏
	def get_queryset(self):
		queryset = UserFav.objects.filter(user=self.request.user)
		return queryset

	def get_serializer_class(self):
		if self.action == 'list':
			return UserFavListSerializer
		return UserFavSerializer

	# 查询某件商品的收藏状态
	def get_object(self):
		user = self.request.user
		# http://127.0.0.1:8000/userfav/27/
		goodsId = self.kwargs['pk']
		# print(goodsId)

		userfav = UserFav.objects.filter(user=user, goods_id=goodsId)
		if userfav.exists():
			return userfav.first()
		return None

	# 取消收藏
	def destroy(self, request, *args, **kwargs):
		instance = self.get_object()
		if instance:
			self.perform_destroy(instance)
			return Response(status=status.HTTP_204_NO_CONTENT)
		return Response(status=status.HTTP_400_BAD_REQUEST)


# 留言
class UserLeavingMessageView(ListModelMixin, RetrieveModelMixin, CreateModelMixin, DestroyModelMixin, GenericViewSet):
	# 局部添加验证
	authentication_classes = (BasicAuthentication, SessionAuthentication, JSONWebTokenAuthentication,)
	permission_classes = (IsAuthenticated,)
	serializer_class = UserLeavingMessageSerializer

	def get_queryset(self):
		queryset = UserLeavingMessage.objects.filter(user=self.request.user)
		return queryset


# 收货地址
class UserAddressView(ModelViewSet):
	# 局部添加验证
	authentication_classes = (BasicAuthentication, SessionAuthentication, JSONWebTokenAuthentication)
	permission_classes = (IsAuthenticated,)

	# 序列化工具
	serializer_class = UserAddressSerializer

	# 重写get_queryset方法
	def get_queryset(self):
		queryset = UserAddress.objects.filter(user=self.request.user)
		return queryset


# 个人信息
class UserInfoView(UpdateModelMixin, RetrieveModelMixin, ListModelMixin, GenericViewSet):
	# 添加局部验证
	authentication_classes = (BasicAuthentication, SessionAuthentication, JSONWebTokenAuthentication,)
	permission_classes = (IsAuthenticated,)
	serializer_class = UserInfoSerializer

	def get_queryset(self):
		queryset = User.objects.filter(pk=self.request.user.id)
		return queryset
