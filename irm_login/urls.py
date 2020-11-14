from django.conf.urls import url
from irm_login import views

urlpatterns = [
    url(r'^$', views.index, name='irm_login_auth'),
]
