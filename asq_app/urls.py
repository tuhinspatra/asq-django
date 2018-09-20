from django.urls import path
from asq_app import views
from django.conf.urls import include,url

app_name = 'asq_app'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    url(r'^ask/',views.askForm,name='ask'),
    url(r'^upvote_route/$', views.upvoter),
     url(r'^downvote_route/$', views.downvoter),
    path('<slug:slug>', views.detail, name='question_detail'),
]
