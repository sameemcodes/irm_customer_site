from django.conf.urls import url
from datafile_upload import views

urlpatterns = [
    url(r'^$', views.index, name='datafile_upload'),
]
