from bazaarapp import views
from django.conf.urls import url


app_name='bazaarapp'

urlpatterns=[
    url(r'^demo/$',views.first),
    url(r'^usersignup/$', views.usersignup,name="usersignup"),
    url(r'^verifictaion/$', views.verify,name="verify")



]