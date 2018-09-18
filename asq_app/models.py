from django.db import models
from django.template.defaultfilters import slugify
from django.contrib.auth.models import User
from django.utils import timezone


# Create your models here.

class Question(models.Model):

    author = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    title = models.CharField('title', max_length=255)
    slug = models.SlugField(unique=True, max_length=255)
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
        return ('question_detail', (), {'slug': self.slug})
        #return reverse('question_details', kwargs={'pk': self.id})
        pass


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

    
