# Generated by Django 3.1 on 2020-08-11 11:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0002_verifycode'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user',
            old_name='phone',
            new_name='mobile',
        ),
    ]
