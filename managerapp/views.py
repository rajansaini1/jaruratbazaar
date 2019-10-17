from django.shortcuts import render,redirect,HttpResponse
from bazaarapp.forms import UserSignupForm
from bazaarapp.models import UserSignup
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

