from bazaarapp import views
from django.conf.urls import url
app_name='bazaarapp'
urlpatterns=[
    url(r'^demo/$',views.first)



]