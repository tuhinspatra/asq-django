from django.http import HttpResponseRedirect,JsonResponse, HttpResponse
from django.shortcuts import get_object_or_404, render,redirect
from django.urls import reverse
from django.views import generic
from .forms import AskForm ,AnsForm
from .models import Answer, Question,UserVoteDetail


class IndexView(generic.ListView):
    template_name = 'asq_app/index.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        """Return the last five published questions."""
        return Question.objects.order_by('-created_on')


def detail(request,slug):
    qdata=Question.objects.get(slug=slug)
    if request.method == 'POST':
        ansform = AnsForm(request.POST)
        if ansform.is_valid() and request.POST['body']:
            instance = ansform.save(commit=False)
            instance.author = request.user
            instance.question = qdata
            instance.save()
            return render(request,'asq_app/question_detail.html',{'qdata':qdata,'ansform':ansform})
    else:
        ansform=AnsForm()
    return render(request,'asq_app/question_detail.html',{'qdata':qdata,'ansform':ansform})

def askForm(request):
    	if request.method == 'POST':
    		askform = AskForm(request.POST)
    		if askform.is_valid():
    			instance = askform.save(commit=False)
    			instance.author = request.user
    			instance.save()
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
        qdata = {'vote':"already voted"}
    else:
        answer.upvotes += 1;
        UserVoteDetail.objects.create(answer=answer_id,question=question_id,user=request.user)
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
        qdata = {'vote':"already voted"}
    else:
        answer.downvotes += 1;
        UserVoteDetail.objects.create(answer=answer_id,question=question_id,user=request.user)
        answer.save()
        qdata = {'votes':answer.downsvotes}
    return JsonResponse(qdata)	

