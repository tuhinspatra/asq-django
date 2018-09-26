from django.urls import path
from asq_app import views
from django.conf.urls import include, url

app_name = 'asq_app'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    url(r'^ask/',views.askForm,name='ask'),
    url(r'^upvote_route/$', views.upvoter),
    url(r'^question_upvote_route/$', views.question_upvote_route),
    url(r'^question_downvote_route/$', views.question_upvote_route),
    url(r'^search/$', views.search_titles),
    url(r'^user_search/$', views.user_search),
    url(r'^notification_route/$', views.notification_updates),
    url(r'^delete_comment_notification/$', views.delete_comment_notification),
    url(r'^delete_answer_notification/$', views.delete_answer_notification),
    url(r'^tag_route/$', views.tag_filter,name='tag_route'),
    url(r'^top_tag/$', views.top_tag),
    url(r'^top_question/$', views.top_question),
    url(r'^downvote_route/$', views.downvoter),
    url(r'^recommend_tags', views.recommendTags),
     #path('dashboard', views.user_dashboard, name='user_dashboard'),
     path('<int:qid>/<slug:slug>', views.detail, name='question_detail'),

]
