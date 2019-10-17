from django.shortcuts import render,redirect,HttpResponse
from managerapp.forms import ProductsCategoriesForm,ProductsTypeForm,ProductsBrandForm
from managerapp.models import ProductsCategories,ProductsType,ProductsBrand
from miscellaneous import mailsend,myconstants
from authorize import authcheck
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


