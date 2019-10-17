from django import forms
from managerapp.models import ProductsCategories,ProductsType,ProductsBrand

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