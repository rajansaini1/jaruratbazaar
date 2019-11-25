from django.shortcuts import render,HttpResponse,redirect
from bazaarapp.forms import UserSignupForm,LoginRecordForm,TempdataTableForm,SaledataTableForm
from bazaarapp.models import UserSignup,LoginRecord,TempdataTable,SaledataTable
from managerapp.models import Products
from miscellaneous import mailsend,myconstants
from authorize import authcheck
from django.core.files.storage import FileSystemStorage,os    #to store image in ,media directory in project--
from django.contrib.auth.hashers import make_password,check_password
import datetime as dt
from django.db.models import Sum
import uuid,socket
from managerapp.models import Products

# Create your views here.
def index(request):
    latestmen=Products.objects.filter(productcategory_id=9).order_by('-product_id')[0:1]
    latestmencollection = Products.objects.filter(productcategory_id=9).order_by('-product_id')[1:2]
    latestmencollection1 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[2:3]
    latestmencollection2 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[3:4]
    latestmencollection3 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[4:5]
    latestmencollection4 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[5:6]
    latestmencollection5 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[6:7]
    latestmencollection6 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[7:8]
    latestmencollection7 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[8:9]
    latestmencollection8 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[9:10]
    latestmencollection9 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[10:11]

    latestwomen = Products.objects.filter(productcategory_id=10).order_by('-product_id')[0:1]
    latestwomencollection = Products.objects.filter(productcategory_id=10).order_by('-product_id')[1:2]
    latestwomencollection1 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[2:3]
    latestwomencollection2 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[3:4]
    latestwomencollection3 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[4:5]
    latestwomencollection4 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[5:6]
    latestwomencollection5 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[6:7]
    latestwomencollection6 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[7:8]
    latestwomencollection7 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[8:9]
    latestwomencollection8 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[9:10]
    latestwomencollection9 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[10:11]


    latestkids = Products.objects.filter(productcategory_id=11).order_by('-product_id')[0:1]
    latestkidcollection = Products.objects.filter(productcategory_id=11).order_by('-product_id')[1:2]
    latestkidcollection1 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[2:3]
    latestkidcollection2 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[3:4]
    latestkidcollection3 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[4:5]
    latestkidcollection4 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[5:6]
    latestkidcollection5 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[6:7]
    latestkidcollection6 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[7:8]
    latestkidcollection7 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[8:9]
    latestkidcollection8 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[9:10]
    latestkidcollection9 = Products.objects.filter(productcategory_id=11).order_by('-product_id')[10:11]

    latestelectronics = Products.objects.filter(productcategory_id=12).order_by('-product_id')[0:1]
    latestelectroniccollection = Products.objects.filter(productcategory_id=12).order_by('-product_id')[1:2]
    latestelectroniccollection1 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[2:3]
    latestelectroniccollection2 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[3:4]
    latestelectroniccollection3 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[4:5]
    latestelectroniccollection4 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[5:6]
    latestelectroniccollection5 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[6:7]
    latestelectroniccollection6 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[7:8]
    latestelectroniccollection7 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[8:9]
    latestelectroniccollection8 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[9:10]
    latestelectroniccollection9 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[10:11]

    return render(request,"index.html",{'lm':latestmen,'lm1':latestmencollection,'lm2': latestmencollection1,
                                        'lm3':latestmencollection2,'lm4':latestmencollection3,'lm5':latestmencollection4,
                                        'lm6': latestmencollection5,'lm7':latestmencollection6,'lm8':latestmencollection7,
                                        'lm9': latestmencollection8,'lm10':latestmencollection9,
                                        'lmgirl': latestwomen,'lmgkids': latestkids,
                                        'lmgirl1':latestwomencollection,'lmgkids1': latestkidcollection,
                                        'lmgirl2':latestwomencollection1,'lmgirl3':latestwomencollection2,
                                        'lmgirl4': latestwomencollection3,'lmgirl5':latestwomencollection4,
                                        'lmgirl6': latestwomencollection5,'lmgirl7': latestwomencollection6,
                                        'lmgirl8': latestwomencollection7,'lmgirl9': latestwomencollection8,
                                        'lmgirl10': latestwomencollection9,
                                        'le':latestelectronics,'le1':latestelectroniccollection,
                                        'le2':latestelectroniccollection1,'le3':latestelectroniccollection2,
                                        'le4': latestelectroniccollection3,'le5': latestelectroniccollection4,
                                        'le6': latestelectroniccollection5,'le7': latestelectroniccollection6,
                                        'le8': latestelectroniccollection7,'le9': latestelectroniccollection8,
                                        'lmgkids2': latestkidcollection1,'lmgkids3': latestkidcollection2,
                                        'lmgkids4': latestkidcollection3,'lmgkids5': latestkidcollection4,
                                        'lmgkids6': latestkidcollection5,'lmgkids7': latestkidcollection6,
                                        'lmgkids8': latestkidcollection7,'lmgkids9': latestkidcollection8,
                                        'lmgkids10': latestkidcollection9})



def first(request):
    return render(request,"demo.html")
def pagenotfound(request):
    return render(request,"pagenotfound.html")
def notlogin(request):
    return render(request,"notlogin.html")
def unauth(request):
    return render(request,"unauthaccess.html")

def home(request):
    try:
        authdata = authcheck.authentication(request.session['Authentication'], request.session['roleid'],
                                            myconstants.USER)

        if (authdata == True):

            return render(request, "home.html")
        else:
            authinfo, message = authdata
            if (message == "Invalid_user"):
                return redirect("/user/unauhtorize_access/")
            elif (message == "Not Login"):
                return redirect("/user/notlogin/")
    except:
        return redirect("/user/notlogin/")


def usersignup(request):
    if request.method == "POST":
        form = UserSignupForm(request.POST)
        email = request.POST['email']
        otp, time = mailsend.OtpSend()
        confirmationlink = "127.0.0.1:8000/verifyuser/?email=" + email +"&token=" + otp
        image= ""
        try:
            if request.FILES:
                my_file = request.FILES["profile"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                image = fs.url(file_name)
                image = my_file.name

        except:
            pass
        aimage=""
        try:
            if request.FILES:
                my_file = request.FILES["aadharimage"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                aimage=fs.url(file_name)
                aimage=my_file.name

        except:
            pass
        pimage=""
        try:
            if request.FILES:
                my_file = request.FILES["panimage"]
                fs = FileSystemStorage()
                file_name = fs.save(my_file.name, my_file)
                pimage = fs.url(file_name)
                pimage = my_file.name
        except:
            pass
        f=form.save(commit=False)
        f.userName = request.POST["name"]
        f.userEmail = email
        f.userMobile = request.POST["mobile"]
        f.userPassword =make_password( request.POST["password"])
        f.userAddress = request.POST["address"]
        f.userCity = request.POST["city"]
        f.userGender = request.POST["gender"]
        f.userPinCode = request.POST["pincode"]
        f.userDob = request.POST["dob"]
        f.userProfile = image
        f.userState = request.POST["state"]
        f.shopAadhar=request.POST["aadharno"]
        f.shopPan=request.POST["pan"]
        f.shopGst=request.POST["gst"]
        f.shopAddress=request.POST["shopaddress"]
        f.shopAadharImage=aimage
        f.shopPanImage = pimage
        f.isActive = True
        f.isAvailable = True
        f.isQueue = False
        f.isVarified = False
        f.userToken = otp
        f.userConfirmationLink = confirmationlink
        f.userOtp = otp
        f.userOtpTime = time
        f.roleid_id =request.POST["b1"]
        f.save()
        mailsend.mail("succesfully done",email,confirmationlink )
        return render(request, "usersignup.html", {'success': True})
    return render(request,"usersignup.html" )

def verify(request):
    email=request.GET['email']
    token=request.GET['token']
    try:
        data=UserSignup.objects.get(userEmail=email)
        dbtoken=data.userToken
        if(dbtoken==token):
            updateuser=UserSignup(
                userEmail=email,
                userToken='',
                userConfirmationLink='',
                isVerified=True
            )
            updateuser.save(update_fields=["userToken","userConfirmationLink","isVerified"])
            return render(request,"verified.html")
        else:
            return render(request,"verified1.html")

    except:
        return render(request, "verified2.html")


def login(request):
    if(request.method=="POST"):
        email=request.POST["email"]
        password=request.POST["password"]
        try:
            data=UserSignup.objects.get(userEmail=email)
            isVerified=data.isVerified
            dbpassword=data.userPassword
            auth=check_password(password,dbpassword)
            if(isVerified==True):
                if(auth==True):
                    request.session['Authentication']=True
                    request.session['email']=email
                    request.session['roleid']=data.roleid_id
                    records=LoginRecordForm(request.POST)
                    r=records.save(commit=False)
                    r.loginTime=dt.datetime.now()
                    r.macAddress=hex(uuid.getnode())
                    ipname=socket.gethostname()
                    r.ipAddress=socket.gethostbyname(ipname)
                    r.userEmail=email
                    r.save()
                    if(request.session['roleid']==1):
                        return redirect("/manager/")
                    elif (request.session['roleid'] == 2):
                        return redirect("/")
                    elif (request. session['roleid'] == 3):
                        return redirect("/shopkeeper/")
                else:
                    return render(request,"login.html",{'wrongpw':True})
            else:
                return render(request,"login.html",{"isv":True})
        except:
            return render(request,"login.html",{'wrongem':True})
    return render(request,"login.html")


def logout(request):
    email=request.session['email']
    data=LoginRecord.objects.filter(userEmail=email).order_by("-logid")[0:1]
    idd=0
    for i in data:
        idd=i.logid
        break

    try:
        request.session.pop("Authentication")
        request.session.pop("email")
        request.session.pop("roleid")
        logoutTime=str(dt.datetime.now())
        if idd>0:
            updatedata=LoginRecord(logid=idd,logoutTime=logoutTime)
            updatedata.save(update_fields=["logoutTime"])
        else:
            pass
        return redirect("/user/login/")
    except:
        return redirect("/user/login/")

def changepassword(request):
    if(request.method=="POST"):
        currentpassword=request.POST['currentpass']
        againpassword=request.POST['againpass']
        newpassword=make_password(request.POST['newpass'])
        email=request.session['email']
        emailid=UserSignup.objects.get(userEmail=email)
        oldpassword=emailid.userPassword
        auth=check_password(currentpassword,oldpassword)
        auth2=check_password(againpassword,newpassword)
        if auth==True and auth2==True:
            updatepassword=UserSignup(userEmail=emailid.userEmail,userPassword=newpassword)
            updatepassword.save(update_fields=["userPassword"])
            return HttpResponse("changed successfully")
        else:
            return render(request,"changepassword.html",{"cpass":True})
    return render(request,"changepassword.html")

def showprofile(request):
    email=request.session['email']
    data=UserSignup.objects.get(userEmail=email)
    if(request.method=="POST"):
        confirmationlink ="congrats! Your profile is updated successfully"
        emailid=request.POST["email"]
        name=request.POST["name"]
        mobile=request.POST["mobile"]
        address=request.POST["address"]
        city=request.POST["city"]
        gender = request.POST["gender"]
        pincode = request.POST["pincode"]
        dob = request.POST["dob"]
        state=request.POST["state"]
        updatedata=UserSignup(userEmail=emailid,userName=name,userMobile=mobile,userAddress=address,userCity=city,
                              userGender=gender, userPinCode=pincode,userDob=dob,userState=state)
        updatedata.save(update_fields=["userMobile","userName","userAddress","userCity","userGender","userPinCode",
                                       "userDob","userState"])
        mailsend.mail("Profile Edit", email, confirmationlink)
        return render(request,"viewprofile.html",{'view':True, 'd':data})
    return render(request,"viewprofile.html",{'d':data})


def viewprofile(request):
    email = request.session['email']
    seedata = UserSignup.objects.get(userEmail=email)
    return render(request,"seeprofile.html",{'v':seedata})

def productdetail(request):
        pid=request.GET['prid']
        data = Products.objects.get(product_id=pid)
        return render(request,"productdetail.html",{'d1':data})

def productcategory(request):
    data=Products.objects.filter(productcategory=9)
    return render(request,"productcategory.html",{'d':data})
def productcategory1(request):
    data=Products.objects.filter(productcategory=10)
    return render(request,"womencategory.html",{'d2':data})
def productcategory2(request):
    data=Products.objects.filter(productcategory=11)
    return render(request,"kidcategory.html",{'d3':data})
def productcategory3(request):
    data=Products.objects.filter(productcategory=12)
    return render(request,"electroniccategory.html",{'d4':data})

def addtocart(request):
        form = TempdataTableForm()
        pid = request.GET["id"]
        uid=request.session['email']
        prodetail = Products.objects.get(product_id=pid)
        userdetail=UserSignup.objects.get(userEmail=uid)
        f=form.save(commit=False)
        f.product_id=prodetail.product_id
        f.product_name=prodetail.product_name
        f.product_image=prodetail. product_image1
        f.product_qty=prodetail.product_qty
        f.product_price=prodetail.product_price
        f.comapany_name = prodetail.brand
        f.product_size= prodetail.product_size
        f.product_size = prodetail.product_size2
        f.product_size = prodetail.product_size3
        f.product_size = prodetail.product_size4
        f.email =userdetail.userEmail
        f.total=str(int(prodetail.product_price)*int(prodetail.product_qty))
        f.country=""
        f.street_address=userdetail.userAddress
        f.apartment_address=userdetail.userAddress
        f.state=userdetail.userState
        f.zip=userdetail.userPinCode
        f.phone=userdetail.userMobile
        f.product_disc=prodetail.product_description
        f.order_notes=""
        f.first_name=userdetail.userName
        f.last_name=userdetail.userName
        f.roleid_id = 2
        f.save()
        return redirect("/user/viewcart/")

def viewcart(request):
    tepdata=TempdataTable.objects.all()
    return render(request,"viewcart.html",{'tpd':tepdata})

def remove(request):
    pro=request.GET["id"]
    data=TempdataTable.objects.get(table_id=pro)
    data.delete()
    return redirect("/user/viewcart/")


def ordersummary(request):
    user = request.session['email']
    data = UserSignup.objects.get(userEmail=user)
    tepdata=TempdataTable.objects.all()
    totalsum= TempdataTable.objects.all().aggregate(Sum('product_price'))
    return render(request,"ordersummary.html",{'os':tepdata,'ud':data,'total':totalsum})

def buynow(request):
    user = request.session['email']
    udata = UserSignup.objects.get(userEmail=user)
    pid = request.GET['prid']
    data = Products.objects.get(product_id=pid)
    return render(request, "buynow.html", {'d1': data,'ud': udata})
# def paymethod(request):
#     return render(request,"payment.html")
def placeorder(request):
    uid = request.session['email']
    tempdata=TempdataTable.objects.filter(email=uid)
    totalsum = TempdataTable.objects.all().aggregate(Sum('product_price'))
    for i in tempdata:
        saletableform=SaledataTableForm()
        f=saletableform.save(commit=False)
        f.product_id=i.product_id
        f.product_name = i.product_name
        f.product_image = i.product_image
        f.product_qty = i.product_qty
        f.product_price = i.product_price
        f.comapany_name = i.comapany_name
        f.product_size = i.product_size
        f.email = i.email
        f.total = int(i.product_price)*int(i.product_qty)
        f.country = ""
        f.invoice=""
        f.street_address = i.street_address
        f.apartment_address = i.apartment_address
        f.state = i.state
        f.zip = i.zip
        f.phone = i.phone
        f.product_disc = i.product_disc
        f.order_notes = ""
        f.first_name = i.first_name
        f.last_name = i.last_name
        f.roleid_id = 2
        f.save()
        quant=int(i.product_qty)
        prodetail = Products.objects.get(product_id=i.product_id)
        totalquant=int(prodetail.product_qty)
        leftquant=totalquant-quant
        proobj=Products(
            product_id=i.product_id,
            product_qty=leftquant
        )
        proobj.save(update_fields=["product_qty"])
    request.session["total"]=totalsum
    tempdata = TempdataTable.objects.filter(email=uid)
    tempdata.delete()
    return render(request,"payment.html",{"suc":True})





