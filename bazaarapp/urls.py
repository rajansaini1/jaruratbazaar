from bazaarapp import views
from django.conf.urls import url


app_name='bazaarapp'

urlpatterns=[

    url(r'^usersignup/$', views.usersignup, name="usersignup"),
    url(r'^login/$', views.login, name="login"),
    url(r'^pagenotfound/$', views.pagenotfound, name="pagenotfound"),
    url(r'^notlogin/$', views.notlogin),
    url(r'^unauhtorize_access/$', views.unauth),
    url(r'^home/$', views.home),
    url(r'^logout/$', views.logout),
    url(r'^changepassword/$', views.changepassword),
    url(r'^bharti/$', views.bharti),
    url(r'^viewprofile/$', views.showprofile),
    url(r'^seeprofile/$', views.viewprofile)

]