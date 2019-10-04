from django.db import models

# Create your models here.


class UserRole(models.Model):
    roleid=models.AutoField(primary_key=True)
    roleName=models.CharField(max_length=200,default="")
    isActive=models.BooleanField(default=True)

class UserSignup(models.Model):
    roleid=models.ForeignKey(UserRole,on_delete=models.CASCADE)
    userName=models.CharField(max_length=200,default="")
    userEmail=models.CharField(primary_key=True,max_length=200,default="")
    userMobile=models.CharField(max_length=10,default="")
    userPassword=models.CharField(max_length=200,default="")
    userAddress=models.CharField(max_length=200,default="")
    userCity=models.CharField(max_length=200,default="")
    userGender=models.CharField(max_length=10,default="")
    userPinCode=models.CharField(max_length=200,default="")
    userDob=models.CharField(max_length=200,default="")
    userState=models.CharField(max_length=200,default="")
    userOtp=models.CharField(max_length=200,default="")
    userOtpTime=models.CharField(max_length=200,default="")
    userConfirmationLink=models.CharField(max_length=200,default="")
    userToken=models.CharField(max_length=200,default="")
    isActive=models.BooleanField(default=True)
    isAvailable = models.BooleanField(default=True)
    isQueue = models.BooleanField(default=False)
    isVerified=models.BooleanField(default=False)



