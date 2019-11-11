from shopkeeperapp import views
from django.conf.urls import url


app_name='shopkeeperapp'

urlpatterns=[



url(r'^$', views.shopkeeper),

]
