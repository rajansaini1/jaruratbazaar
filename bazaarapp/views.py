from django.shortcuts import render,HttpResponse
from miscellaneous import sendmail,myconstants
from authorize import authcheck
# Create your views here.
def index(request):
    return HttpResponse("<h1>hello</h1>")
def first(request):
    return render(request,"demo.html")
def usersignup(request):
    if request.method=="POST":
        email=request.POST['emailid']
        otp,time=sendmail.OtpSend()


    confirmationlink="https://127.0.0.1.8000/verifyuser/?email="+email+"&token="+otp
    sendmail.sendmail("Confirmation Link",email,confirmationlink)
def verify(request):
    emailid=request.GET['email']
    token=request.GET['link']