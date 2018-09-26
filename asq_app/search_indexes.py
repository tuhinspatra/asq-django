import datetime
from haystack import indexes
from asq_app.models import Question


class QuestionIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.EdgeNgramField(document=True, use_template=True)
    # author = indexes.CharField(model_attr='author')
    author = indexes.EdgeNgramField(model_attr='author_name')
    tags = indexes.EdgeNgramField(model_attr='tags')
    created_on = indexes.DateTimeField(model_attr='created_on')
    # content_auto = indexes.EdgeNgramField(model_attr='title')
    title = indexes.EdgeNgramField(model_attr='title')


    def get_model(self):
        return Question


    # def prepare_author(self, obj):
    #     pass
    #     # return [author.name for a in obj.authors.all()]


    def index_queryset(self, using=None):
        """Used when the entire index for model is updated."""
        return self.get_model().objects.filter(created_on__lte=datetime.datetime.now())
        # return self.get_model().objects.all()
