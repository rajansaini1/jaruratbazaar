"""jaruratbazaar URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
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
from django.urls import path
from django.conf.urls import url,include
from django.conf import settings
from bazaarapp import views
from django.conf.urls.static import settings
from django.conf.urls.static import static


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^user/',include('bazaarapp.urls')),
    url(r'^$',views.index),
    url(r'^verifyuser/$', views.verify),
    url(r'^demo/$',views.first),
    url(r'^usersignup/$', views.usersignup,name="usersignup"),
    url(r'^login/$', views.login,name="login"),
    url(r'^manager/$', views.security),
    url(r'^pagenotfound/$',views.pagenotfound,name="pagenotfound"),
    url(r'^notlogin/$',views.notlogin),
    url(r'^unauhtorize_access/$',views.unauth),
    url(r'^home/$',views.home),
    url(r'^logout/$',views.logout)




]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
