from shopkeeperapp import views
from django.conf.urls import url


app_name='shopkeeperapp'

urlpatterns=[



url(r'^$', views.shopkeeper),
url(r'^showshopproducts/$',views.showshopproducts),

]
