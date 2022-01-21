from django.shortcuts import render
from django_filters.rest_framework import DjangoFilterBackend
# Create your views here.
from rest_framework.filters import OrderingFilter, SearchFilter
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response
from rest_framework.viewsets import GenericViewSet

from goods.filter import GoodsFilter
from goods.models import GoodsCategory, Banner, HotSearchWords, Goods
from goods.serializers import GoodsCategorySerializer3, GoodsCategorySerializer2, GoodsCategorySerializer1, \
	BannerSerializer, HotSearchSerializer, GoodsSerializer


class GoodsCategoryView(ListModelMixin, RetrieveModelMixin, GenericViewSet):
	queryset = GoodsCategory.objects.filter(category_type=1)
	serializer_class = GoodsCategorySerializer1


# 创建轮播图View
class BannerView(ListModelMixin, RetrieveModelMixin, GenericViewSet):
	queryset = Banner.objects.all()
	serializer_class = BannerSerializer


# 热搜次
class HotSearchWordsView(ListModelMixin, RetrieveModelMixin, GenericViewSet):
	queryset = HotSearchWords.objects.all()
	serializer_class = HotSearchSerializer


class GoodsPaginator(PageNumberPagination):
	page_size = 3
	max_page_size = 10
	page_query_param = 'page'

	# def get_paginated_response(self, data):
	# 	return Response({
	# 		'links': {
	# 			'next': self.get_next_link(),
	# 			'previous': self.get_previous_link(),
	# 		},
	# 		'count': self.page.paginator.count,
	# 		'result': data,
	# 	})


class GoodsView(ListModelMixin, RetrieveModelMixin, GenericViewSet):
	# queryset = Goods.objects.filter(is_new=1)
	queryset = Goods.objects.all()
	serializer_class = GoodsSerializer
	# 指明筛选字段
	# filter_fields = ('is_new',)

	# 方式一：重写queryset方法
	# def get_queryset(self):
	#     queryset = Goods.objects.all()
	#     is_new = self.request.query_params.get('is_new')
	#     if is_new:
	#         queryset = Goods.objects.filter(is_new=is_new).order_by('-add_time')[:5]
	#     return queryset

	# 方式二：加过滤器
	filter_backends = (DjangoFilterBackend, OrderingFilter, SearchFilter)
	filter_class = GoodsFilter
	# 指明排序字段
	ordering_fields = ('shop_price', 'sold_num',)
	# 指明检索字段
	search_fields = ('name', 'goods_desc')
	# 添加分页设置
	# 局部分页：预先定义一个分页器类，在需要分页的视图函数中再去调用该分页类
	pagination_class = GoodsPaginator
