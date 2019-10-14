from django.contrib import admin
from managerapp.models import ProductsCategories,ProductsType,ProductsBrand,Products

# Register your models here.
admin.site.register(ProductsCategories),
admin.site.register(ProductsType),
admin.site.register(ProductsBrand),
admin.site.register(Products),

