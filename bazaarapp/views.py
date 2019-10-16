from django.shortcuts import render,HttpResponse,redirect
from bazaarapp.forms import UserSignupForm
from bazaarapp.models import UserSignup
from miscellaneous import mailsend,myconstants
from authorize import authcheck
from django.core.files.storage import FileSystemStorage,os    #to store image in ,media directory in project--
from django.contrib.auth.hashers import make_password,check_password

# Create your views here.
def index(request):
    return HttpResponse("<img src=/assets/images/keepbuy.gif/>" )
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
def bharti(request):
    return render(request,"bharti.html")

def usersignup(request):
    if request.method == "POST":
        email = request.POST['email']
        otp, time = mailsend.OtpSend()
        confirmationlink = "127.0.0.1:8000/verifyuser/?email=" + email +"&token=" + otp

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
            f.roleid_id =myconstants.USER
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
                    if(request.session['roleid']==1):
                        return redirect("/user/manager/")
                    elif (request.session['roleid'] == 2):
                        return redirect("/user/home/")
                    elif (request.session['roleid'] == 3):
                        return redirect("/shopkeeper/")
                else:
                    return render(request,"login.html",{'wrongpw':True})
            else:
                return render(request,"login.html",{"isv":True})
        except:
            return render(request,"login.html",{'wrongem':True})
    return render(request,"login.html")


def logout(request):
    try:
        request.session.pop("Authentication")
        request.session.pop("email")
        request.session.pop("roleid")
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

