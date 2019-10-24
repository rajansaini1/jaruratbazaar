from django.shortcuts import render,redirect,HttpResponse
from managerapp.forms import ProductsCategoriesForm,ProductsTypeForm,ProductsBrandForm,AddProductsForm
from managerapp.models import ProductsCategories,ProductsType,ProductsBrand
from miscellaneous import mailsend,myconstants
from django.core.files.storage import FileSystemStorage,os
from authorize import authcheck
import datetime as dt
# Create your views here.
def manager(request):
    try:
        authdata=authcheck.authentication(request.session['Authentication'],request.session['roleid'],myconstants.MANAGER)

        if(authdata==True):


            return render(request,"manager.html")
        else:
            authinfo,message=authdata
            if(message=="Invalid_user"):
                return redirect("/user/unauhtorize_access/")
            elif(message=="Not Login"):
                return redirect("/user/notlogin/")
    except:
        return redirect("/user/notlogin/")

def productscategories(request):
    form = ProductsCategoriesForm(request.POST)
    if request.method == "POST":
        f=form.save(commit=False)
        f.categories_Name=request.POST["category"]
        f.save()
    return render(request,"productscategories.html",{'wc':True})


def productstype(request):
    form = ProductsTypeForm(request.POST)
    if request.method == "POST":
        f=form.save(commit=False)
        f.type_Name=request.POST["type"]
        f.save()
    return render(request,"productstype.html",{'wt':True})

def productsbrand(request):
    form = ProductsBrandForm(request.POST)
    if request.method == "POST":
        f=form.save(commit=False)
        f.brand_Name=request.POST["brand"]
        f.brand_isActive=True
        f.save()
    return render(request,"productsbrand.html",{'wb':True})

def showcategories(request):
    data=ProductsCategories.objects.all()
    return render(request,"showcategories.html",{'showc':data})
def showtype(request):
    data=ProductsType.objects.all()
    return render(request,"showtype.html",{'showt':data})
def showbrand(request):
    data=ProductsBrand.objects.all()
    return render(request,"showbrand.html",{'showb':data})
def updatecategories(request):
    catid = request.GET["id"]
    data = ProductsCategories.objects.get(categories_id=catid)
    if request.method == "POST":
        catname=request.POST["name"]
        updatecategories=ProductsCategories(categories_id=catid,categories_Name=catname)
        updatecategories.save(update_fields=["categories_Name"])
        return redirect("/manager/showcategories/")
    return render(request,"updatecategories.html",{'d':data})

def updatetype(request):
    typeid = request.GET["id"]
    data = ProductsType.objects.get(type_id=typeid)
    if request.method == "POST":
        typename=request.POST["name"]
        updatetype=ProductsType(type_id=typeid,type_Name=typename)
        updatetype.save(update_fields=["type_Name"])
        return redirect("/manager/showtype/")
    return render(request,"updatetype.html",{'d':data})


def updatebrand(request):
    brandid = request.GET["id"]
    data = ProductsBrand.objects.get(brand_id=brandid)
    if request.method == "POST":
        brandname=request.POST["name"]
        updatebrand=ProductsBrand(brand_id=brandid,brand_Name=brandname)
        updatebrand.save(update_fields=["brand_Name"])
        return redirect("/manager/showbrand/")
    return render(request,"updatebrand.html",{'d':data})


def deletecategories(request):
        catid = request.GET["id"]
        data = ProductsCategories.objects.get(categories_id=catid)
        data.delete()
        return redirect("/manager/showcategories/")


def deletetype(request):
    catid = request.GET["id"]
    data = ProductsType.objects.get(type_id=catid)
    data.delete()
    return redirect("/manager/showtype/")


def deletebrand(request):
    brandid = request.GET["id"]
    data = ProductsBrand.objects.get(brand_id=brandid)
    data.delete()
    return redirect("/manager/showbrand/")

def addproducts(request):
    catg=ProductsCategories.objects.all()
    typeg=ProductsType.objects.all()
    branddata=ProductsBrand.objects.all()
    if request.method == "POST":
        form = AddProductsForm(request.POST)
        image1 = ""
        try:
            if request.FILES:
                my_file = request.FILES["image1"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                image1 = fs.url(file_name)
                image1 = my_file.name

        except:
            pass
        image2=""
        try:
            if request.FILES:
                my_file = request.FILES["image2"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                image2=fs.url(file_name)
                image2=my_file.name

        except:
            pass
        image3=""
        try:
            if request.FILES:
                my_file = request.FILES["image3"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                image3=fs.url(file_name)
                image3=my_file.name
        except:
            pass
        image4=""
        try:
            if request.FILES:
                my_file = request.FILES["image4"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                image4=fs.url(file_name)
                image4=my_file.name

        except:
            pass
        f = form.save(commit=False)
        f.productcategory_id=request.POST["category"]
        f.productstype_id=request.POST["type"]
        f.brand_id=request.POST["brand"]
        f.user_email_id=request.session["email"]
        f.product_name=request.POST["name"]
        f.product_description=request.POST["description"]
        f.product_size=request.POST["size"]
        f.product_size2=request.POST["size2"]
        f.product_size3=request.POST["size3"]
        f.product_size4=request.POST["size4"]
        f.product_qty=request.POST["quantity"]
        f.product_price=request.POST["price"]
        f.product_image1=image1
        f.product_image2=image2
        f.product_image3=image3
        f.product_image4=image4
        f.product_isactive=True
        f.product_creation_date=dt.datetime.now()
        f.save()
        return render(request,"addproducts.html",{'d':True})


    return render(request,"addproducts.html",{'catg':catg,'typeg':typeg,'brandg':branddata})




