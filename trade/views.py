import random
import time

from alipay import AliPay
from django.shortcuts import render

# Create your views here.
from rest_framework import mixins, status
from rest_framework.authentication import BasicAuthentication, SessionAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.viewsets import ModelViewSet, GenericViewSet
from rest_framework_jwt.authentication import JSONWebTokenAuthentication

from online_store.settings import PUBLIC_KEY, PRIVATE_KEY
from trade.models import ShoppingCart, OrderInfo, OrderGoods
from trade.serializers import ShoppingCartSerializer, ShoppingCartListSerializer, OrderSerializer, OrderDetailSerializer


class ShoppingCartView(ModelViewSet):
	authentication_classes = (BasicAuthentication, SessionAuthentication, JSONWebTokenAuthentication)
	permission_classes = (IsAuthenticated,)

	# 当前用户的购物车商品
	def get_queryset(self):
		queryset = ShoppingCart.objects.filter(user=self.request.user)
		return queryset

	# serializer_class = ShoppingCartSerializer
	def get_serializer_class(self):
		# print('---------->', self.action)
		if self.action == 'list':
			return ShoppingCartListSerializer
		return ShoppingCartSerializer

	def get_object(self):
		goodsId = self.kwargs['pk']
		user = self.request.user
		shopcarts = ShoppingCart.objects.filter(user=user, goods_id=goodsId)
		if shopcarts.exists():
			return shopcarts.first()
		return None


class OrderView(mixins.CreateModelMixin, mixins.DestroyModelMixin, mixins.RetrieveModelMixin, mixins.ListModelMixin,
				GenericViewSet):
	authentication_classes = (BasicAuthentication, SessionAuthentication, JSONWebTokenAuthentication,)
	permission_classes = (IsAuthenticated,)
	serializer_class = OrderSerializer

	def get_queryset(self):
		queryset = OrderInfo.objects.filter(user=self.request.user)
		return queryset

	def get_serializer_class(self):
		if self.action == 'retrieve':
			return OrderDetailSerializer
		return OrderSerializer

	# 定制创建动作
	# 	def create(self, request, *args, **kwargs):
	# 		serializer = self.get_serializer(data=request.data)
	# 		serializer.is_valid(raise_exception=True)
	#
	# 		post_script = serializer.validated_data['post_script']
	# 		address = serializer.validated_data['address']
	# 		signer_name = serializer.validated_data['signer_name']
	# 		signer_mobile = serializer.validated_data['singer_mobile']
	# 		order_mount = serializer.validated_data['order_mount']
	# 		user = serializer.validated_data['user']
	# 		order_sn = self.generate_order_sn()
	# 		order = OrderInfo.objects.create(user=user, post_script=post_script, address=address,
	# 										 signer_name=signer_name,
	# 										 singer_mobile=signer_mobile, order_mount=order_mount, order_sn=order_sn)
	# 		return order
	# 定制创建动作
	def perform_create(self, serializer):
		order = serializer.save()
		if order:
			# 获取当前用户的购物车
			shopcart_list = ShoppingCart.objects.filter(user=self.request.user)
			for shopcart in shopcart_list:
				order_goods = OrderGoods()
				order_goods.goods = shopcart.goods
				order_goods.goods_num = shopcart.nums
				order_goods.order = order
				# 保存
				order_goods.save()
				# 删除购物车记录
				shopcart.delete()
			headers = self.get_success_headers(serializer.data)
			return Response(serializer.data, status=status.HTTP_201_CREATED)
		return Response({'msg': "订单创建失败！"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class AlipayView(APIView):
	def post(self, request):
		alipay_message = {}
		print('---------555----->', request.POST.items())
		for key, value in request.POST.items():
			alipay_message[key] = value
		sign = alipay_message.pop('sign', None)

		alipay_public_key_string = open(PUBLIC_KEY).read()
		app_private_key_string = open(PRIVATE_KEY).read()
		alipay = AliPay(
			appid="2021000116696479",
			app_notify_url=None,  # 默认回调url
			app_private_key_string=app_private_key_string,
			# 支付宝的公钥，验证支付宝回传消息使用，不是你自己的公钥,
			alipay_public_key_string=alipay_public_key_string,
			sign_type="RSA2",  # RSA 或者 RSA2
			debug=True  # 默认False
		)

		flag = alipay.verify(alipay_message, sign)
		if flag:
			data = alipay_message.get('alipay_trade_page_pay_response')
			print('------------>data:', data)
			# 支付宝的交易号
			trade_no = data.get('trade_no', None)
			trade_status = data.get('trade_status', None)
			pay_time = data.get('gmt_payment', None)
			# 订单号
			out_trade_no = data.get('out_trade_no')
			# 更新订单
			order_info = OrderInfo.objects.filter(order_sn=out_trade_no).first()
			order_info.trade_no = trade_no
			order_info.pay_status = trade_status
			order_info.pay_time = pay_time
			order_info.save()
			return Response({'message': "ok"})
