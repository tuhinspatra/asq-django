from django.contrib import admin
from django.contrib.auth.models import User
from .models import Question, Answer ,UserVoteDetail
# Register your models here.

admin.site.register(Question)
admin.site.register(Answer)
admin.site.register(UserVoteDetail)
#admin.site.register(User)
