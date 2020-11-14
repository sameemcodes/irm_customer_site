from django.conf.urls import url
from customer_selection import views

urlpatterns = [
    url(r'^$', views.index, name='customer_selection'),
]
