from managerapp import views
from django.conf.urls import url



app_name='managerapp'

urlpatterns=[


url(r'^$', views.manager),
url(r'^productscategories/$', views.productscategories),
url(r'^productstype/$', views.productstype),
url(r'^productsbrand/$', views.productsbrand),



]