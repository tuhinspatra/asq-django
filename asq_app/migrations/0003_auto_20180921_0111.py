# Generated by Django 2.0.2 on 2018-09-20 19:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('asq_app', '0002_uservotedeatil'),
    ]

    operations = [
        migrations.AlterField(
            model_name='uservotedeatil',
            name='answer',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='uservotedeatil',
            name='question',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='uservotedeatil',
            name='user',
            field=models.IntegerField(default=0),
        ),
    ]
