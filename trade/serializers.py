import random
import time

from alipay import AliPay
from rest_framework import serializers
from rest_framework.fields import CurrentUserDefault

from goods.models import Goods
from goods.serializers import GoodsSerializer
from online_store.settings import PUBLIC_KEY, PRIVATE_KEY
from trade.models import ShoppingCart, OrderInfo, OrderGoods


class ShoppingCartSerializer(serializers.ModelSerializer):
	user = serializers.HiddenField(default=CurrentUserDefault())

	class Meta:
		model = ShoppingCart
		fields = ['user', 'goods', 'nums']

	def validate_nums(self, value):
		# print(value)
		# print(self)
		# print(self.initial_data)
		# print(self.instance.goods_id)
		# goodsId = self.instance.goods_id
		goodsId = self.initial_data['goods']
		print(goodsId)
		goods = Goods.objects.get(pk=goodsId)
		if goods and goods.goods_num >= value:
			return value
		else:
			raise serializers.ValidationError('商品库存不足！')


class ShoppingCartListSerializer(serializers.ModelSerializer):
	goods = GoodsSerializer()

	class Meta:
		model = ShoppingCart
		fields = ['goods', 'nums']


class OrderSerializer(serializers.ModelSerializer):
	user = serializers.HiddenField(default=CurrentUserDefault())
	alipay_url = serializers.SerializerMethodField(read_only=True)

	class Meta:
		model = OrderInfo
		fields = '__all__'

	@staticmethod
	def generate_order_sn():
		return str(int(time.time())) + str(random.randint(999, 9999))

	# 定制创建动作
	def create(self, validated_data):

		post_script = validated_data['post_script']
		address = validated_data['address']
		signer_name = validated_data['signer_name']
		signer_mobile = validated_data['singer_mobile']
		order_mount = validated_data['order_mount']
		user = validated_data['user']
		order_sn = self.generate_order_sn()
		order = OrderInfo.objects.create(user=user, post_script=post_script, address=address,
										 signer_name=signer_name,
										 singer_mobile=signer_mobile, order_mount=order_mount, order_sn=order_sn)
		return order

	def get_alipay_url(self, obj):
		print(obj)
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

		# 如果你是 Python 3的用户，使用默认的字符串即可
		subject = "商城商品支付"

		trade_no = str(time.time()).replace('.', '')
		ran = ''
		s = '1234567890'
		for i in range(5):
			r = random.choice(s)
			ran += r
		trade_no += ran
		# 电脑网站支付，需要跳转到https://openapi.alipay.com/gateway.do? + order_string
		try:
			total_amount = obj.order_mount
		except:
			total_amount = obj['order_mount']
		order_string = alipay.api_alipay_trade_page_pay(
			out_trade_no=trade_no,
			# total_amount=obj['order_mount'],
			total_amount=total_amount,
			subject=subject,
			# 支付成功后回调的路由
			return_url='http://127.0.0.1/alipay/return',
			notify_url=None  # 可选, 不填则使用默认notify url
		)

		# 沙箱环境的网关
		alipay_url = 'https://openapi.alipaydev.com/gateway.do?'

		url = alipay_url + order_string
		return url


class OrderGoodsSerializer(serializers.ModelSerializer):
	goods = GoodsSerializer()

	class Meta:
		model = OrderGoods
		fields = '__all__'


class OrderDetailSerializer(serializers.ModelSerializer):
	goods = OrderGoodsSerializer(many=True)

	class Meta:
		model = OrderInfo
		fields = '__all__'
