# Generated by Django 2.0.8 on 2018-09-22 16:36

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Answer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('body', models.TextField(max_length=5000, verbose_name='body')),
                ('upvotes', models.IntegerField(default=0)),
                ('downvotes', models.IntegerField(default=0)),
                ('created_on', models.DateTimeField(auto_now_add=True, verbose_name='created on')),
                ('last_modified_on', models.DateTimeField(default=django.utils.timezone.now, verbose_name='last modified on')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'answer',
                'verbose_name_plural': 'answers',
                'ordering': ['upvotes', '-created_on'],
            },
        ),
        migrations.CreateModel(
            name='Notification',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('isans', models.BooleanField(default=False)),
                ('iscomment', models.BooleanField(default=False)),
                ('new_notification', models.BooleanField(default=False)),
                ('answer', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='asq_app.Answer')),
            ],
        ),
        migrations.CreateModel(
            name='QComment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('commentbody', models.TextField(max_length=5000)),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Question',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255, verbose_name='title')),
                ('slug', models.SlugField(max_length=255, unique=True)),
                ('tags', models.CharField(default='', max_length=1000, verbose_name='tags')),
                ('body', models.TextField(max_length=5000, verbose_name='body')),
                ('upvotes', models.IntegerField(default=0)),
                ('downvotes', models.IntegerField(default=0)),
                ('created_on', models.DateTimeField(auto_now_add=True, verbose_name='created on')),
                ('last_modified_on', models.DateTimeField(default=django.utils.timezone.now, verbose_name='last modified on')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'question',
                'verbose_name_plural': 'questions',
                'ordering': ['-created_on'],
            },
        ),
        migrations.CreateModel(
            name='TagSearch',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tag', models.CharField(max_length=250)),
                ('question_id', models.IntegerField(blank=True)),
                ('question_slug', models.SlugField(max_length=255)),
                ('question_title', models.CharField(default='untitle question', max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='UserDashBoard',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.IntegerField(default=0)),
                ('answer', models.IntegerField(default=0)),
                ('comment', models.IntegerField(default=0)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='UserVoteDetail',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.IntegerField(default=0)),
                ('answer', models.IntegerField(default=0)),
                ('upvote', models.BooleanField(default=False)),
                ('downvote', models.BooleanField(default=False)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='qcomment',
            name='question',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comments', to='asq_app.Question'),
        ),
        migrations.AddField(
            model_name='notification',
            name='comment',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='asq_app.QComment'),
        ),
        migrations.AddField(
            model_name='notification',
            name='created_by',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='created_by', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='notification',
            name='question',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='asq_app.Question'),
        ),
        migrations.AddField(
            model_name='notification',
            name='received_by',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='received_by', to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='answer',
            name='question',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='answers', to='asq_app.Question'),
        ),
    ]
