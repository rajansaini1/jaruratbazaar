from django.shortcuts import render,HttpResponse
from bazaarapp.forms import UserSignupForm
from bazaarapp.models import UserSignup
from miscellaneous import mailsend,myconstants
from authorize import authcheck
from django.core.files.storage import FileSystemStorage,os    #to store image in ,edia directory in project--
from django.contrib.auth.hashers import make_password,check_password

# Create your views here.
def index(request):
    return HttpResponse("<h1>hello</h1>")
def first(request):
    return render(request,"demo.html")
def usersignup(request):
    if request.method == "POST":
        email = request.POST['useremail']
        otp, time = mailsend.OtpSend()
        confirmationlink = "https://127.0.0.1.8000/verifyuser/?email=" + email +"&token" + otp

        form = UserSignupForm(request.POST)
        if form.is_valid():
            f=form.save(commit=False)
            f.userName = request.POST["name"]
            f.userEmail = email
            f.userMobile = request.POST["mobile"]
            f.userPassword = request.POST["password"]
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
            f.userToken = ""
            f.userConfirmationLink = ""
            f.userOtp = otp
            f.userOtpTime = time
            f.roleid_id = 2
            f.save()
        else:
            return HttpResponse("Error")
            mailsend.sendmail()
            return render(request, "usersignup.html",{'success':True})
        return render(request,"usersignup.html")



def verify(request):
    email=request.GET['email']
    token=request.GET['link']
    form = UserSignupForm(request.POST)
    if request.method == "POST":
        f = form.save(commit=False)
        f.userEmail=request.POST['email']
        f.userName = request.POST['name']
        f.userPassword = request.POST['password']
        f.userMobile = request.POST['mobile']
        f.userState = request.POST['state']
        otp, time = mailsend.OtpSend()
        email = request['email']
        f.userOtp = otp
        f.userOtpTime = time
        token = mailsend.OtpSend()
        token = make_password(token)
        token = token.replace("+","")
        f.userToken = token
        confirmationlink="http://127.0.0.1/verifyuser/?email="+email+"&token="+token
        f.userConfirmationLink = confirmationlink
        f.isVarified = False
        f.isActive = True
        f.roleid_id = 1
        f.save()
        mailsend.sendmail("Confirmation Link",email,confirmationlink)


