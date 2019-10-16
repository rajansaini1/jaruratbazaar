from managerapp import views
from django.conf.urls import url



app_name='managerapp'

urlpatterns=[


url(r'^manager/$', views.manager),




]