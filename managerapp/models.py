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

class Products(models.Model):
    product_id=models.AutoField(primary_key=True)
    user_email=models.ForeignKey(UserSignup,on_delete=models.CASCADE,default="")
    productcategory=models.ForeignKey(ProductsCategories,on_delete=models.CASCADE,default="")
    productstype=models.ForeignKey(ProductsType,on_delete=models.CASCADE,default="")
    brand = models.ForeignKey(ProductsBrand, on_delete=models.CASCADE, default="")
    product_name=models.CharField(max_length=255)
    product_description=models.CharField(default="",max_length=255,null=True)
    product_size=models.CharField(default="",max_length=255,null=True)
    product_size2=models.CharField(default="", max_length=255, null=True)
    product_size3=models.CharField(default="", max_length=255, null=True)
    product_size4=models.CharField(default="", max_length=255, null=True)
    product_qty=models.IntegerField(default=0)
    product_price=models.IntegerField(default=0)
    product_image1=models.CharField(max_length=255,default="")
    product_image2 = models.CharField(max_length=255, default="",null=True)
    product_image3 = models.CharField(max_length=255, default="",null=True)
    product_image4 = models.CharField(max_length=255, default="",null=True)
    product_isactive=models.BooleanField(default=True)
    product_creation_date=models.CharField(max_length=255,default="")






