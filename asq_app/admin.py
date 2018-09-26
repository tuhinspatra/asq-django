from django.contrib import admin
from django.contrib.auth.models import User
from .models import Question, Answer ,UserVoteDetail,QComment,TagSearch,Notification, StandardTags
# Register your models here.

admin.site.register(Question)
admin.site.register(Answer)
admin.site.register(UserVoteDetail)
admin.site.register(QComment)
admin.site.register(TagSearch)
admin.site.register(Notification)
admin.site.register(StandardTags)
