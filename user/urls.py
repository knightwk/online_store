from django.urls import path
from rest_framework.routers import DefaultRouter

from user.views import SmsViewSet

router = DefaultRouter()
router.register(r'code', SmsViewSet, basename='code')

urlpatterns = [
    path(),
]
