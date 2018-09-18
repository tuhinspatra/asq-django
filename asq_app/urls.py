from django.urls import path
from asq_app import views
from django.conf.urls import include,url
app_name = 'asq_app'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    url(r'^upvote_route/$', views.upvoter),
     url(r'^downvote_route/$', views.downvoter),
    path('<int:pk>/<slug:slug>', views.DetailView.as_view(), name='question_detail'),
]
