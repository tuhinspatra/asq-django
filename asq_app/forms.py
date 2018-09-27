from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.db import models
from django.forms import ModelForm
from .models import Question,Answer,QComment,UserDetails
from froala_editor.widgets import FroalaEditor
from django.views.generic.edit import FormView

class SignUpForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    email = forms.EmailField(max_length=254, help_text='Required. Enter a valid email address.')

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2', )

    def clean_email(self):
        emaill=self.cleaned_data['email']
        if User.objects.filter(email=emaill).count()!=0:
            raise forms.ValidationError('a user with this email id already exist!!!')
        return emaill
    
    def __init__(self,*args,**kwargs):
        super().__init__(*args,**kwargs)
        self.fields['username'].widget.attrs.update({'class':'form-control','placeholder':'Username'})
        self.fields['first_name'].widget.attrs.update({'class': 'form-control', 'placeholder': 'First name'})
        self.fields['last_name'].widget.attrs.update({'class': 'form-control', 'placeholder': 'Last name'})
        self.fields['email'].widget.attrs.update({'class': 'form-control', 'placeholder': 'Email'})
        self.fields['password1'].widget.attrs.update({'class': 'form-control', 'placeholder': 'Password'})
        self.fields['password2'].widget.attrs.update({'class': 'form-control', 'placeholder': 'Confirm password'})

class AskForm(ModelForm):
    class Meta:
        model = Question
        fields = ['title','body','tags']
        widgets = {
            'tags':forms.HiddenInput,
        }

    def __init__(self,*args,**kwargs):
        super().__init__(*args,**kwargs)
        self.fields['title'].widget.attrs.update({'class': 'form-control', 'onfocus':'showTitleInstructions()', 'placeholder':'Add title to your question. Be specific.'})
        self.fields['body'].widget.attrs.update({'cols': '60', 'rows':'25','id':'id_commentbody'})
        


class AnsForm(ModelForm):
    body = forms.CharField(widget=FroalaEditor(options={
        'toolbarInline': False,
        'image_upload': True,
        'height': 200,
        'width': 600,
    }))
    class Meta:
        model = Answer
        fields = ['body']

class CommentForm(ModelForm):
    commentbody = forms.CharField(widget=FroalaEditor(options={
        'toolbarInline': False,
        'image_upload': True,
        'height': 200,
        'width': 600,
    }))
    class Meta:
        model = QComment
        fields = ['commentbody']        
		
class UserPhotoForm(ModelForm):
    class Meta:
        model = UserDetails
        fields = ['profile_pic']
    



