from django.shortcuts import render,HttpResponse,redirect
from bazaarapp.forms import UserSignupForm
from bazaarapp.models import UserSignup
from miscellaneous import mailsend,myconstants
from authorize import authcheck
from django.core.files.storage import FileSystemStorage,os    #to store image in ,media directory in project--
from django.contrib.auth.hashers import make_password,check_password

# Create your views here.
def index(request):
    return HttpResponse("<h1>hello</h1>")
def first(request):
    return render(request,"demo.html")
def pagenotfound(request):
    return render(request,"pagenotfound.html")
def notlogin(request):
    return render(request,"notlogin.html")

def unauth(request):
    return render(request,"unauthaccess.html")
def home(request):
    return render(request,"home.html")


def usersignup(request):
    if request.method == "POST":
        email = request.POST['email']
        otp, time = mailsend.OtpSend()
        confirmationlink = "http://127.0.0.1.8000/verifyuser/?email=" + email +"&token=" + otp

        form = UserSignupForm(request.POST)
        if form.is_valid():
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
            f.userState = request.POST["state"]
            f.isActive = True
            f.isAvailable = True
            f.isQueue = False
            f.isVarified = False
            f.userToken = otp
            f.userConfirmationLink = confirmationlink
            f.userOtp = otp
            f.userOtpTime = time
            f.roleid_id = 2
            f.save()
            mailsend.mail("succesfully done",email,confirmationlink)
            return render(request, "usersignup.html", {'success': True})
        else:
            return HttpResponse("Error")
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


def security(request):
    try:
        authdata=authcheck.authentication(request.session['Authentication'],request.session['roleid'])
        if(authcheck==True):
            return render(request,"notlogin.html")
        else:
            authinfo,message=authdata
            if(message=="invalid-user"):
                return redirect("/unauhtorize_access/")
            elif(message=="not_login"):
                return redirect("/notlogin/")
    except:
        return redirect("/notlogin/")



def login(request):
    if(request.method=="POST"):
        email=request.POST["email"]
        password=request.POST["password"]
        try:
            data=UserSignup.objects.get(userEmail=email)
            dbpassword=data.userPassword
            auth=check_password(password,dbpassword)
            if(auth==True):
                request.session['Authentication']=True
                request.session['emailid']=email
                request.session['roleid']=data.roleid_id
                return redirect("/manager/")
            else:
                return render(request,"login.html",{'wrongpw':True})
        except:
            return render(request,"login.html",{'wrongem':True})
    return render(request,"login.html")


def logout(request):
    try:
        request.session.pop("Authentication")
        request.session.pop("emailid")
        request.session.pop("roleid")
        return redirect("/login/")
    except:
        return redirect("/login/")
