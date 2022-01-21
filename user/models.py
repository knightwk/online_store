from django.contrib.auth.models import AbstractUser
from django.db import models


# Create your models here.
class User(AbstractUser):
    mobile = models.CharField(max_length=11)
    birthday = models.DateField(default='2020-02-02')
    gender = models.CharField(max_length=4, choices=(('boy', '男'), ('girl', '女')), default='boy')

    class Meta:
        db_table = 'user'


class VerifyCode(models.Model):
    code = models.CharField(max_length=6)
    mobile = models.CharField(max_length=11)
    send_time = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'verifycode'
