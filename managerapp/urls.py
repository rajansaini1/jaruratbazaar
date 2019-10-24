from managerapp import views
from django.conf.urls import url



app_name='managerapp'

urlpatterns=[


url(r'^$', views.manager),
url(r'^productscategories/$', views.productscategories),
url(r'^productstype/$', views.productstype),
url(r'^productsbrand/$', views.productsbrand),
url(r'^showcategories/$', views.showcategories),
url(r'^showtype/$', views.showtype),
url(r'^showbrand/$', views.showbrand),
url(r'^updatecategories/$', views.updatecategories),
url(r'^updatetype/$', views.updatetype),
url(r'^updatebrand/$', views.updatebrand),
url(r'^deletecategories/$', views.deletecategories),
url(r'^deletetype/$', views.deletetype),
url(r'^deletebrand/$', views.deletebrand),
url(r'^addproducts/$', views.addproducts),


]