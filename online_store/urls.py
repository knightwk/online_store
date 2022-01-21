"""online_store URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.views.static import serve
from rest_framework.routers import DefaultRouter
from rest_framework_jwt.views import obtain_jwt_token

from online_store.settings import MEDIA_ROOT
from user import views as user_views
from goods import views as goods_views
from useroper import views as useroper_views
from trade import views as trade_views

router = DefaultRouter()
# 注册时获取验证码
router.register(r'code', user_views.SmsViewSet, basename='code')
# 注册用户
router.register(r'users', user_views.UserRegisterViewSet, basename='users')
# 商品分类显示
router.register(r'categorys', goods_views.GoodsCategoryView, basename='category')
# 轮播图
router.register(r'banners', goods_views.BannerView, basename='banners')
# 热搜词及搜索
router.register(r'hotsearchs', goods_views.HotSearchWordsView, basename='hotsearchs')
# 商品
router.register(r'goods', goods_views.GoodsView, basename='goods')
# 收藏商品
router.register(r'userfavs', useroper_views.UserFavView, basename='userfavs')
# 购物车
router.register(r'shopcarts', trade_views.ShoppingCartView, basename='shopcarts')
# 我的留言
router.register(r'messages', useroper_views.UserLeavingMessageView, basename='messages')
# 收货地址
router.register(r'address', useroper_views.UserAddressView, basename='address')
# 个人信息
router.register(r'users/1', useroper_views.UserInfoView, basename='users/1')
# 订单
router.register(r'orders', trade_views.OrderView, basename='orders')

urlpatterns = [
	path('admin/', admin.site.urls),
	# path('user/', include('user.urls')),
	path('', include(router.urls)),
	path('login/', obtain_jwt_token),
	path('alipay/return', trade_views.AlipayView),
	path('media/<path:path>/', serve, {'document_root': MEDIA_ROOT}),
]
