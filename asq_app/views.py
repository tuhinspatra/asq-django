from django.http import HttpResponseRedirect,JsonResponse, HttpResponse
from django.shortcuts import get_object_or_404, render, redirect, render_to_response
from django.urls import reverse
from django.views import generic
from django.contrib.auth.models import User
from .forms import AskForm ,AnsForm,CommentForm
from .models import Answer, Question,UserVoteDetail,QComment,TagSearch,Notification 
import json
from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect
from django.core import serializers
from .forms import SignUpForm
from . import views
from django.conf import settings
from haystack.query import SearchQuerySet
from haystack.inputs import BaseInput, Clean
from django.db.models import Count

class IndexView(generic.ListView):
    template_name = 'asq_app/index.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        """Return the last five published questions."""
        return Question.objects.order_by('-created_on')


def detail(request,qid,slug):
    qdata=Question.objects.get(id=qid)
    tag_list=(qdata.tags).split(",")
    if request.method == 'POST':
        ansform = AnsForm(request.POST)
        commentform = CommentForm(request.POST)
        if ansform.is_valid():
            instance = ansform.save(commit=False)
            instance.author = request.user
            instance.question = qdata
            instance.save()
            question = Question.objects.get(id=qdata.id)
            if question.author != request.user:
                Notification.objects.create(received_by=question.author,created_by=request.user,question=question,isans=True,answer=instance,new_notification=True)
            #url=qdata.get_abolute_url()
            return HttpResponseRedirect(request.path)
        elif commentform.is_valid():
            instance = commentform.save(commit=False)
            instance.author = request.user
            instance.question = qdata
            instance.save()
            question = Question.objects.get(id=qdata.id)
            if question.author != request.user:
                Notification.objects.create(received_by=question.author,created_by=request.user,question=question,iscomment=True,comment=instance,new_notification=True)
            #ansform = AnsForm()
            #url=qdata.get_abolute_url()
            return HttpResponseRedirect(request.path)    
            #return render(request,'asq_app/question_detail.html',{'qdata':qdata,'ansform':ansform})
    else:
        ansform = AnsForm()
        commentform = CommentForm()
    return render(request, 'asq_app/question_detail.html', {'qdata': qdata, 'commentform': commentform, 'ansform': ansform, 'froala_plugins_js': settings.FROALA_PLUGINS_JS_FILES,
                                                            'froala_plugins_css': settings.FROALA_PLUGINS_CSS_FILES})

def askForm(request):
    if request.method == 'POST':
        askform = AskForm(request.POST)
        if askform.is_valid():
            instance = askform.save(commit=False)
            instance.author = request.user
            instance.save()
            tag_list = (instance.tags).split(",")
            for tag in tag_list:
                TagSearch.objects.create(tag=tag,question_id=instance.id,question_slug=instance.slug,question_title=instance.title)
            return redirect('/q/'+str(instance.id)+"/"+instance.slug)
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
        question_id = []
        for question in TagSearch.objects.filter(tag__icontains=tag_name):
            question_list.append(question.question_slug)
            question_title.append(question.question_title)
            question_id.append(question.question_id)
        data = {'question':question_list,'question_title':question_title,'question_id':question_id}    
    except Question.DoesNotExist:
        question_list = []
        data = {'question':"None"}    
    return JsonResponse(data)


def top_tag(request):
    
    try:
        tag_list = []
        tags = TagSearch.objects.values('tag').order_by('tag').annotate(the_count=Count('tag'))
       
        for t in tags:
            tag_list.append(t)
        #tag_list.sort()
        tag = sorted(tag_list, key = lambda i: i['the_count'],reverse=True)

        data = {'tags':tag[:min(len(tag),20)]}    
    except Question.DoesNotExist:
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
    upvote = 0
    downvote = 0
    try:
        user = User.objects.get(id=user)
    except User.DoesNotExist:
        user = None
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
            upvote += UserVoteDetail.objects.filter(answer=ans.id,user=request.user,upvote=True).count()
            downvote += UserVoteDetail.objects.filter(answer=ans.id,user=request.user,downvote=True).count()

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
    'comment':comment,
    'user':user,
    'upvote':upvote,
    'downvote':downvote
    }
    #print(upvote)
    return render(request,'asq_app/user_dashboard.html',data)    

def common_user_dashboard(request,uid):
    upvote = 0
    downvote = 0
    try:
        user = User.objects.get(id=uid)
    except User.DoesNotExist:
        user = None
    question = []
    try:
        for q in Question.objects.filter(author_id=uid):
            question.append(q)
    except Question.DoesNotExist:
        question=[]
    answer =[]
    try:
        for ans in Answer.objects.filter(author_id=uid):
            answer.append(ans)
            upvote += UserVoteDetail.objects.filter(answer=ans.id,user=user,upvote=True).count()
            downvote += UserVoteDetail.objects.filter(answer=ans.id,user=user,downvote=True).count()

    except Answer.DoesNotExist:
        answer=[]        
    comment =[]
    try:
        for c in QComment.objects.filter(author_id=uid):
            comment.append(c)
    except QComment.DoesNotExist:
        comment=[]        
    data = {
    'question':question,
    'answer':answer,
    'comment':comment,
    'user':user,
    'upvote':upvote,
    'downvote':downvote
    }
    return render(request,'asq_app/user_dashboard.html',data)    



def notification_updates(request):
    notification = []
    isans =[]
    try:
        
        for notify in Notification.objects.filter(received_by=request.user,new_notification=True):
            notification.append(notify.question)
            isans.append(notify.isans) 
            # print(notify)
    except Notification.DoesNotExist:
        notification = []
    # print(notification)    
    #data = {notification:notification}
    notify_serialized = serializers.serialize('json',notification)

    return JsonResponse(notify_serialized,safe=False)            

def delete_notification(request):
    notification_id = request.GET.get('qid')
    for notify in Notification.objects.filter(question_id=notification_id,new_notification=True):
        notify.new_notification=False
        notify.save()

    data={'status':"successfully deleted"}
    return JsonResponse(data)            


class CustomContain(BaseInput):
    input_type_name = 'custom_contain'
    def prepare(self, query_obj):
        query_string = super(CustomContain, self).prepare(query_obj)
        query_string = query_obj.clean(query_string)
        exact_bits = [Clean(bit).prepare(query_obj)
                    for bit in query_string.split(' ') if bit]
        query_string = u' '.join(exact_bits)
        return u'*{}*'.format(query_string)


# Usage:


def search_titles(request):
    query = request.GET.get('q', '')
    if query == '':
        return JsonResponse({})
    sqs = SearchQuerySet()
    # results_custom = SearchQuerySet().filter(content=CustomContain(query))
    # r2 = SearchQuerySet().filter(content=query)
    results = SearchQuerySet().autocomplete(content_auto=query)
    # spelling = sqs.spelling_suggestion(query)
    # results = serializers.serialize('json', results)
    response = []
    for x in results:
        obj = {
            'title': x.object.title,
            'body': x.object.body[:30],
            'website-link': reverse('asq_app:question_detail', kwargs={'qid':x.object.id,'slug': x.object.slug})
        }
        response.append(obj)

    print(response)
    return JsonResponse(response, safe=False)
