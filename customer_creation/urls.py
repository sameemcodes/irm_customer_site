from django.conf.urls import url
from customer_creation import views

urlpatterns = [
    url(r'^$', views.index, name='customer_creation'),
]
