from django.http import HttpResponseRedirect,JsonResponse, HttpResponse
from django.shortcuts import get_object_or_404, render
from django.urls import reverse
from django.views import generic

from .models import Answer, Question

from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect

from .forms import SignUpForm
from . import views

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