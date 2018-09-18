from django.contrib import admin

from .models import Question, Answer
# Register your models here.


class AnswerInline(admin.TabularInline):
    model = Answer
    extra = 1


class QuestionAdmin(admin.ModelAdmin):
    list_filter = ['created_on']
    search_fields = ['title']
    fieldsets = [
        (None,               {'fields': ['title', 'author', 'slug', 'body']},),
    ]
    inlines = [AnswerInline]
    list_display = ('title', 'created_on')


admin.site.register(Question, QuestionAdmin)
