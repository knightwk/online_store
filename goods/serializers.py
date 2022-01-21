from rest_framework import serializers

from goods.models import GoodsCategory, Banner, HotSearchWords, Goods, GoodsImage


# 三级分类
class GoodsCategorySerializer3(serializers.ModelSerializer):
	class Meta:
		model = GoodsCategory
		fields = '__all__'


# 二级分类
class GoodsCategorySerializer2(serializers.ModelSerializer):
	sub_category = GoodsCategorySerializer3(many=True)

	class Meta:
		model = GoodsCategory
		fields = '__all__'


# 一级分类
class GoodsCategorySerializer1(serializers.ModelSerializer):
	sub_category = GoodsCategorySerializer2(many=True)

	class Meta:
		model = GoodsCategory
		fields = '__all__'


# 轮播图序列化
class BannerSerializer(serializers.ModelSerializer):
	class Meta:
		model = Banner
		fields = '__all__'


# 热搜词序列化
class HotSearchSerializer(serializers.ModelSerializer):
	class Meta:
		model = HotSearchWords
		fields = '__all__'


# GoodsImage的序列化
class GoodsImageSerializer(serializers.ModelSerializer):
	class Meta:
		model = GoodsImage
		fields = '__all__'


# 商品
class GoodsSerializer(serializers.ModelSerializer):
	category = GoodsCategorySerializer1()
	images = GoodsImageSerializer(many=True)

	class Meta:
		model = Goods
		fields = '__all__'
