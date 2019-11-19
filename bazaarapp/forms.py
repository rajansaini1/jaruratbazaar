from django import forms
from bazaarapp.models import UserSignup,LoginRecord,TempdataTable

class UserSignupForm(forms.ModelForm):
    class Meta():
        model=UserSignup
        exclude=["roleid","userName","userEmail","userMobile","userPassword",
                 "userAddress","userCity","userGender","userPinCode","userDob","userProfile",
                 "userState","userOtp","userOtpTime","userConfirmationLink",
                 "userToken","isActive","isAvailable","isQueue","isVarified","shopAadhar",
                 "shopPan","shopGst","shopAddress","shopAadharImage","shopPanImage",]

class LoginRecordForm(forms.ModelForm):
    class Meta():
        model=LoginRecord
        exclude=["logid","loginTime","logoutTime","ipAddress","macAddress","userEmail"]

class TempdataTableForm(forms.ModelForm):
    class Meta():
        model=TempdataTable
        exclude=["table_id","email","first_name","last_name","product_id","product_name","product_disc",
                 "product_size","product_image","product_qty","product_price"," total","country","comapany_name",
                 "street_address","apartment_address","state","zip","phone","order_notes"]
