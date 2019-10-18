from django import forms
from bazaarapp.models import UserSignup

class UserSignupForm(forms.ModelForm):
    class Meta():
        model=UserSignup
        exclude=["roleid","userName","userEmail","userMobile","userPassword",
                 "userAddress","userCity","userGender","userPinCode","userDob","userProfile",
                 "userState","userOtp","userOtpTime","userConfirmationLink",
                 "userToken","isActive","isAvailable","isQueue","isVarified"]