from django.conf.urls import url
from customer_updation import views

urlpatterns = [
    url(r'^$', views.updation, name='customer_updation'),
    url(r'^update', views.update_header_data_db, name='update'),
]
