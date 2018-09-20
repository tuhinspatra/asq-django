from django.db import models
from django.forms import ModelForm
from .models import Question,Answer
class AskForm(ModelForm):
	class Meta:
		model=Question
		fields=['title','slug','body',]

class AnsForm(ModelForm):
	class Meta:
		model=Answer
		fields=['body']

