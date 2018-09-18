from django.http import HttpResponseRedirect,JsonResponse, HttpResponse
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.views import generic

from .models import Answer, Question


class IndexView(generic.ListView):
    template_name = 'asq_app/index.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        """Return the last five published questions."""
        return Question.objects.order_by('-created_on')[:5]


class DetailView(generic.DetailView):
    model = Question
    template_name = 'asq_app/question_detail.html'

def upvoter(request):
	answer_id = request.GET.get('answer_id')
	answer = Answer.objects.get(pk=answer_id)
	answer.upvotes += 1;
	answer.save()
	data = {'status':"success"}
	return JsonResponse(data)

def downvoter(request):
	answer_id = request.GET.get('answer_id')
	answer = Answer.objects.get(pk=answer_id)
	answer.downvotes += 1;
	answer.save()
	data = {'status':"success"}
	return JsonResponse(data)	

