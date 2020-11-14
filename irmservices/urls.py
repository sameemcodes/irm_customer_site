"""irmservices URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import url
from django.conf.urls import include, re_path
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^irm_login_auth/', include('irm_login.urls')),
    url(r'^customer_selection/', include('customer_selection.urls')),
    url(r'^customer_creation/', include('customer_creation.urls')),
    url(r'^customer_updation/', include('customer_updation.urls')), 
    url(r'^irm_dashboard/', include('irm_dashboard.urls')), 
    url(r'^datafile_upload/', include('datafile_upload.urls')),
    path('admin/', admin.site.urls),
    url(r'^celery-progress/', include('celery_progress.urls')),  # the endpoint is configurable
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
