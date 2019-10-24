from django import forms
from managerapp.models import ProductsCategories,ProductsType,ProductsBrand,Products

class ProductsCategoriesForm(forms.ModelForm):
    class Meta():
        model=ProductsCategories
        exclude=["categories_id","categories_Name"]

class ProductsTypeForm(forms.ModelForm):
    class Meta():
        model=ProductsType
        exclude=["type_id","type_Name"]

class ProductsBrandForm(forms.ModelForm):
    class Meta():
        model=ProductsBrand
        exclude=["brand_id","brand_Name"]

class AddProductsForm(forms.ModelForm):
    class Meta():
        model=Products
        exclude=["product_id","user_email","productcategory","productstype","brand","product_name","product_description","product_size",
                 "product_size2","product_size3","product_size4","product_qty","product_price","product_image1","product_image2","product_image3",
                 "product_image4","product_isactive","product_creation_date"]
