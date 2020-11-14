from django.conf.urls import url
from irm_dashboard import views

urlpatterns = [
    url(r'^$', views.index, name='irm_dashboard'),
]
