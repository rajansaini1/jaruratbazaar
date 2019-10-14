from django.db import models
from bazaarapp.models import UserSignup


# Create your models here.

class ProductsCategories(models.Model):
    categories_id=models.AutoField(primary_key=True)
    categories_Name=models.CharField(max_length=250,default="")

class ProductsType(models.Model):
    type_id=models.AutoField(primary_key=True)
    type_Name=models.CharField(max_length=250,default="")

class ProductsBrand(models.Model):
    brand_id=models.AutoField(primary_key=True)
    brand_Name=models.CharField(max_length=250,default="",unique=True)
    brand_isActive=models.BooleanField(default="True")





