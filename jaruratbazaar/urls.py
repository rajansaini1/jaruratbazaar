"""jaruratbazaar URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import home
    2. Add a URL to urlpatterns:  path('', home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url,include
from django.conf import settings
from django.contrib.auth.views import logout
from bazaarapp import views
from django.conf.urls.static import settings
from django.conf.urls.static import static
from django.views.generic import TemplateView
from managerapp import views as api_views
urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^',include('social_django.urls',namespace='social')),
    url(r'^user/',include('bazaarapp.urls')),
    url(r'^manager/',include('managerapp.urls')),
    url(r'^shopkeeper/',include('shopkeeperapp.urls')),
    url(r'^$',views.index),
    url(r'^verifyuser/$', views.verify),
    url(r'^demo/$',views.first),
    url(r'^paypal/',include('paypal.standard.ipn.urls')),
    url(r'^payment_process/$',api_views.payment_process, name='payment_process'),
    url(r'^payment_done/$',TemplateView.as_view(template_name="payment_done.html"),name='payment_done'),
    url(r'^payment_cancel/$',TemplateView.as_view(template_name="payment_cancel.html"),name='payment_cancel'),




]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
