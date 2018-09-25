from django.urls import path
from asq_app import views
from django.conf.urls import include, url

app_name = 'asq_app'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    url(r'^ask/',views.askForm,name='ask'),
    url(r'^upvote_route/$', views.upvoter),
    url(r'^search/$', views.search_titles),
    url(r'^user_search/$', views.user_search),
    url(r'^notification_route/$', views.notification_updates),
    url(r'^delete_notification/$', views.delete_notification),
    url(r'^tag_route/$', views.tag_filter),
    url(r'^top_tag/$', views.top_tag),
     url(r'^downvote_route/$', views.downvoter),
     #path('dashboard', views.user_dashboard, name='user_dashboard'),
     path('<int:qid>/<slug:slug>', views.detail, name='question_detail'),

]
