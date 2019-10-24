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
    userProfile=models.CharField(max_length=255,default="")
    userState=models.CharField(max_length=200,default="")
    shopAadhar=models.CharField(max_length=255,default="")
    shopPan = models.CharField(max_length=255, default="")
    shopGst = models.CharField(max_length=255, default="")
    shopAddress= models.CharField(max_length=255, default="")
    shopAadharImage = models.CharField(max_length=255, default="")
    shopPanImage= models.CharField(max_length=255, default="")
    userOtp=models.CharField(max_length=200,default="")
    userOtpTime=models.CharField(max_length=200,default="")
    userConfirmationLink=models.CharField(max_length=200,default="")
    userToken=models.CharField(max_length=200,default="")
    isActive=models.BooleanField(default=True)
    isAvailable = models.BooleanField(default=True)
    isQueue = models.BooleanField(default=False)
    isVerified=models.BooleanField(default=False)

class LoginRecord(models.Model):
    logid=models.AutoField(primary_key=True)
    loginTime=models.CharField(max_length=255,default="",null=True)
    logoutTime = models.CharField(max_length=255, default="", null=True)
    userEmail = models.CharField(max_length=255, default="", null=True)
    ipAddress = models.CharField(max_length=255, default="", null=True)
    macAddress = models.CharField(max_length=255, default="", null=True)



