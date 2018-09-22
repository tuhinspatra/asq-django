from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.db import models
from django.forms import ModelForm
from .models import Question,Answer

class SignUpForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2', )

    def clean_email(self):
        emaill=self.cleaned_data['email']
        if User.objects.filter(email=emaill).count()!=0:
            raise forms.ValidationError('a user with this email id already exist!!!')

class AskForm(ModelForm):
    class Meta:
        model=Question
        widgets = {'tags': forms.HiddenInput,}
        fields=['title','slug','body','tags']

    # def __init__(self,*args,**kwargs):
    #     super().__init__(*args,**kwargs)
    #     self.fields['result'].widget.attrs.update({'name':'result'})

class AnsForm(ModelForm):
	class Meta:
		model=Answer
		fields=['body']
