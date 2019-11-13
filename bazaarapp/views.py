from django.shortcuts import render,HttpResponse,redirect
from bazaarapp.forms import UserSignupForm,LoginRecordForm
from bazaarapp.models import UserSignup,LoginRecord
from managerapp.models import Products
from miscellaneous import mailsend,myconstants
from authorize import authcheck
from django.core.files.storage import FileSystemStorage,os    #to store image in ,media directory in project--
from django.contrib.auth.hashers import make_password,check_password
import datetime as dt
import uuid,socket
from managerapp.models import Products

# Create your views here.
def index(request):
    latestmen=Products.objects.filter(productcategory_id=9).order_by('-product_id')[0:1]
    latestmencollection = Products.objects.filter(productcategory_id=9).order_by('product_id')[0:1]
    latestmencollection1 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[4:5]
    latestmencollection2 = Products.objects.filter(productcategory_id=9).order_by('-product_id')[2:3]

    latestwomen = Products.objects.filter(productcategory_id=10).order_by('-product_id')[0:1]
    latestwomencollection = Products.objects.filter(productcategory_id=10).order_by('-product_id')[1:2]
    latestwomencollection1 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[2:3]
    latestwomencollection2 = Products.objects.filter(productcategory_id=10).order_by('-product_id')[3:4]

    latestkids = Products.objects.filter(productcategory_id=11).order_by('-product_id')[2:3]
    latestkidcollection = Products.objects.filter(productcategory_id=11).order_by('-product_id')[1:2]

    latestelectronics = Products.objects.filter(productcategory_id=12).order_by('-product_id')[0:1]
    latestelectroniccollection = Products.objects.filter(productcategory_id=12).order_by('-product_id')[1:2]
    latestelectroniccollection1 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[2:3]
    latestelectroniccollection2 = Products.objects.filter(productcategory_id=12).order_by('-product_id')[3:4]

    return render(request,"index.html",{'lm':latestmen,'lm1':latestmencollection,'lm2': latestmencollection1,
                                        'lm3':latestmencollection2, 'lmgirl': latestwomen,'lmgkids': latestkids,
                                        'lmgirl1':latestwomencollection,'imgkids1': latestkidcollection,
                                        'lmgirl2':latestwomencollection1,'lmgirl3':latestwomencollection2,
                                        'le':latestelectronics,'le1':latestelectroniccollection,
                                        'le2':latestelectroniccollection1,'le3':latestelectroniccollection2,})



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
                        return redirect("/user/")
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
        updatedata.save(update_fields=["userMobile","userName","userAddress","userGender","userPinCode",
                                       "userDob","userState"])
        mailsend.mail("Profile Edit", email, confirmationlink)
        return render(request,"viewprofile.html",{'view':True, 'd':data})
    return render(request,"viewprofile.html",{'d':data})


def viewprofile(request):
    email = request.session['email']
    seedata = UserSignup.objects.get(userEmail=email)
    return render(request,"seeprofile.html",{'v':seedata})

def mantype(request):
    data=Products.objects.filter()
    return render(request,"usermasterpage.html",{'d1':data})
def mancloths(request):
    data=Products.objects.filter(productstype=7)
    return render(request,"mancloths.html",{'d':data})