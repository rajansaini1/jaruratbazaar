import smtplib
import random,string
import datetime as dt
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
def sendmail():
    msg=MIMEMultipart()
    msg['From']='jaruratbazaar008@gmail.com'
    msg['To']='bharti.rajput.0531@gmail.com'
    msg['Subject']="Hiiiiiii......"
    body="Hello...."
    msg.attach(MIMEText (body,"Plain"))
    try:
       server=smtplib.SMTP('smtp.gmail.com',587)
       server.starttls()
       server.login('jaruratbazaar008@gmail.com','jarurat123')
       text=msg.as_string()
       server.sendmail('jaruratbazaar008@gmail.com','bharti.rajput.0531@gmail.com',text)
       print("Email sent successfully!")
       return True
    except smtplib.SMTPException:
                                 print("Email not send")
                                 return False
                                 # server.quit()

sendmail()



def OtpSend(length=2):
    letter=string.ascii_letters
    a=random.randint(10000,100000)
    otp = str(a).join(random.choice(letter) for i in range(length))
    x = str(dt.datetime.now())
    return(otp,x)
print(OtpSend)