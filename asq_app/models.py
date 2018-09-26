from django.db import models
from django.template.defaultfilters import slugify
from django.contrib.auth.models import User
from django.utils import timezone
from django import forms
from django.urls import reverse

# Create your models here.

class Question(models.Model):
    author = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    title = models.CharField('title', max_length=255)
    slug = models.SlugField(unique=True, max_length=255)
    # tags = models.CharField('tags',widget=forms.TextInput(attrs={'type':'text','class':'labelinput'}),max_length=1000)
    tags = models.CharField('tags',max_length=1000,default='')
    body = models.TextField('body', max_length=5000)
    upvotes = models.IntegerField(default=0)
    downvotes = models.IntegerField(default=0)
    created_on = models.DateTimeField('created on', auto_now_add=True)
    last_modified_on = models.DateTimeField('last modified on', default=timezone.now)

    class Meta:
        ordering = ['-created_on']

        def __unicode__(self):
            return self.title

        verbose_name = 'question'
        verbose_name_plural = 'questions'

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.title)
        self.last_modified_on = timezone.now()
        super().save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('asq_app:question_detail', kwargs={'slug': self.slug})
        #return reverse('question_details', kwargs={'pk': self.id})


class Answer(models.Model):

    author = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    body = models.TextField('body', max_length=5000)
    question = models.ForeignKey(
        Question,
        on_delete=models.CASCADE,
        related_name='answers',
    )
    upvotes = models.IntegerField(default=0)
    downvotes = models.IntegerField(default=0)
    created_on = models.DateTimeField('created on', auto_now_add=True)
    last_modified_on = models.DateTimeField('last modified on', default=timezone.now)

    class Meta:
        ordering = ['upvotes', '-created_on']
        verbose_name = 'answer'
        verbose_name_plural = 'answers'

    def __str__(self):
        return self.body[:20]
    
    def save(self, *args, **kwargs):
        self.last_modified_on = timezone.now()
        super().save(*args, **kwargs)

class UserVoteDetail(models.Model):
    user = models.ForeignKey('auth.User',on_delete=models.CASCADE)
    question = models.IntegerField(default=0)
    answer = models.IntegerField(default=0)
    upvote = models.BooleanField(default = False)
    downvote = models.BooleanField( default = False)

    def __str__(self):
        return self.user.username

class QComment(models.Model):
    author = models.ForeignKey('auth.User',on_delete=models.CASCADE)
    question = models.ForeignKey('Question',on_delete = models.CASCADE,related_name = 'comments')
    commentbody = models.TextField(max_length = 5000)
    
    def __str__(self):
        return self.commentbody[:20]


class UserDashBoard(models.Model):
    user = models.ForeignKey('auth.User',on_delete = models.CASCADE)
    question = models.IntegerField(default = 0)
    answer = models.IntegerField(default=0)
    comment = models.IntegerField(default=0)

    def __str__(self):
        return self.user


class TagSearch(models.Model):
    tag = models.CharField(blank=False,max_length=250)
    question_id = models.IntegerField(blank=True)
    question_slug = models.SlugField(max_length=255)
    question_title = models.CharField(max_length=200,default="untitle question")
    def __str__(self):
        return self.tag


class Notification(models.Model):
    created_by = models.ForeignKey('auth.User',on_delete=models.CASCADE,related_name='created_by') 
    received_by = models.ForeignKey('auth.User',on_delete=models.CASCADE,related_name='received_by')
    question = models.ForeignKey('Question',on_delete=models.CASCADE,null=True,blank=True)
    answer = models.ForeignKey('Answer',on_delete=models.CASCADE,null=True,blank=True)
    comment = models.ForeignKey('QComment',on_delete=models.CASCADE,null=True,blank=True)
    isans = models.BooleanField(default=False)
    iscomment = models.BooleanField(default=False)
    new_notification = models.BooleanField(default=False)
    def __str__(self):
        if not self.question:
            return "hello"
        elif self.isans == True:
            return self.created_by.get_username()+" answered on "+self.question.title
        elif self.iscomment == True:
            return self.created_by.get_username()+" commented on "+self.question.title

class StandardTags(models.Model):
    standardTags = models.CharField(max_length=200,blank=False)
    def __str__(self):
        if self.standardTags:
            return self.standardTags
        else:
            return ""

