from django.http import HttpResponseRedirect,JsonResponse, HttpResponse
from django.shortcuts import get_object_or_404, render,redirect
from django.urls import reverse
from django.views import generic
from .forms import AskForm ,AnsForm,CommentForm
from .models import Answer, Question,UserVoteDetail,QComment,TagSearch

from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect

from .forms import SignUpForm
from . import views

class IndexView(generic.ListView):
    template_name = 'asq_app/index.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        """Return the last five published questions."""
        return Question.objects.order_by('-created_on')


def detail(request,slug):
    qdata=Question.objects.get(slug=slug)
    tag_list=(qdata.tag).split(",")
    print(tag_list)
    if request.method == 'POST':
        ansform = AnsForm(request.POST)
        commentform = CommentForm(request.POST)
        if ansform.is_valid():
            instance = ansform.save(commit=False)
            instance.author = request.user
            instance.question = qdata
            instance.save()
            #ansform = AnsForm()
            #url=qdata.get_abolute_url()
            return HttpResponseRedirect(request.path)
        elif commentform.is_valid():
            instance = commentform.save(commit=False)
            instance.author = request.user
            instance.question = qdata
            instance.save()
            #ansform = AnsForm()
            #url=qdata.get_abolute_url()
            return HttpResponseRedirect(request.path)    
            #return render(request,'asq_app/question_detail.html',{'qdata':qdata,'ansform':ansform})
    else:
        ansform = AnsForm()
        commentform = CommentForm()
    return render(request,'asq_app/question_detail.html',{'qdata':qdata,'commentform':commentform,'ansform':ansform})

def askForm(request):
    if request.method == 'POST':
        askform = AskForm(request.POST)
        if askform.is_valid():
            instance = askform.save(commit=False)
            instance.author = request.user
            instance.save()
            tag_list = (instance.tag).split(",")
            for tag in tag_list:
                TagSearch.objects.create(tag=tag,question_id=instance.id,question_slug=instance.slug,question_title=instance.title)
            return redirect('/')
    else:
    	askform = AskForm()
    return render(request,'asq_app/askform.html',{'askform':askform})

def ansForm(request):
        if request.method == 'POST':
            ansform = AnsForm(request.POST)
            if ansform.is_valid():
                instance = ansform.save(commit=False)
                instance.author = request.user
                instance.save()
                return redirect('/')
        else:
            ansform = AnsForm()
        return render(request,'asq_app/ansform.html',{'ansform':ansform})



def tag_filter(request):
    tag_name=request.GET.get('tag')
    try:
        question_list=[]
        question_title=[]
        for question in TagSearch.objects.filter(tag=tag_name):
            question_list.append(question.question_slug)
            question_title.append(question.question_title)
        data = {'question':question_list,'question_title':question_title}    
    except Question.DoesNotExist:
        question_list = []
        data = {'question':"None"}    
    return JsonResponse(data)

                        
def upvoter(request):
    answer_id = request.GET.get('answer_id')
    question_id = request.GET.get('question_id')
    try:
        answer = Answer.objects.get(pk=answer_id)
        question = Question.objects.get(pk=question_id)
        status = UserVoteDetail.objects.get(answer=answer_id,question=question_id,user=request.user)
    except UserVoteDetail.DoesNotExist:
        status=None             
    if status != None:
        if not status.downvote:
            answer.upvotes-=1
            answer.save()
            status.delete()
    else:
        answer.upvotes += 1;
        UserVoteDetail.objects.create(answer=answer_id,question=question_id,user=request.user,upvote=True)
        answer.save()
    qdata = {'votes':answer.upvotes}
    return JsonResponse(qdata)

def downvoter(request):
    answer_id = request.GET.get('answer_id')
    question_id = request.GET.get('question_id')
    try:
        answer = Answer.objects.get(pk=answer_id)
        question = Question.objects.get(pk=question_id)
        status = UserVoteDetail.objects.get(answer=answer_id,question=question_id,user=request.user)
    except UserVoteDetail.DoesNotExist:
        status=None             
    if status != None:
        if not status.upvote:
            answer.downvotes -= 1
            answer.save()
            status.delete()    
    else:
        answer.downvotes += 1;
        UserVoteDetail.objects.create(answer=answer_id,question=question_id,user=request.user,downvote=True)
        answer.save()
    qdata = {'votes':answer.downvotes}
    return JsonResponse(qdata)	

def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            # return reverse('IndexView.as_view()')
            return redirect('/q/')

    else:
        form = SignUpForm()
    return render(request, 'asq_app/signup.html', {'form': form})

def user_dashboard(request):
    user = request.user.id
    question = []
    try:
        for q in Question.objects.filter(author_id=user):
            question.append(q)
    except Question.DoesNotExist:
        question=[]
    answer =[]
    try:
        for ans in Answer.objects.filter(author_id=user):
            answer.append(ans)
    except Answer.DoesNotExist:
        answer=[]        
    comment =[]
    try:
        for c in QComment.objects.filter(author_id=user):
            comment.append(c)
    except QComment.DoesNotExist:
        comment=[]        
    data = {
    'question':question,
    'answer':answer,
    'comment':comment
    }
    return render(request,'asq_app/user_dashboard.html',data)    