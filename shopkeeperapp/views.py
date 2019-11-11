from django.shortcuts import render,redirect,HttpResponse
from miscellaneous import mailsend,myconstants

# Create your views here.
from authorize import authcheck


def shopkeeper(request):
    try:
        authdata=authcheck.authentication(request.session['Authentication'],request.session['roleid'],myconstants.SHOPKEEPER)

        if(authdata==True):


            return render(request,"shopkeeper.html")
        else:
            authinfo,message=authdata
            if(message=="Invalid_user"):
                return redirect("/user/unauhtorize_access/")
            elif(message=="Not Login"):
                return redirect("/user/notlogin/")
    except:
        return redirect("/user/notlogin/")
