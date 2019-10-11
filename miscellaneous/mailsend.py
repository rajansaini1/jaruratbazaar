import smtplib
import random,string
import datetime as dt
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
def mail(subject,receiver,link):
    msg=MIMEMultipart()
    msg['From']='jaruratbazaar008@gmail.com'
    msg['To']=receiver
    msg['Subject']=subject
    server = smtplib.SMTP('smtp.gmail.com', 587)
    body=link
    msg.attach(MIMEText (body,"Plain"))
    server.starttls()
    try:


       server.login('jaruratbazaar008@gmail.com','jarurat123')
       text=msg.as_string()
       server.sendmail(msg["from"],msg["To"],text)
       print("Email sent successfully!")
       server.quit()
       return True
    except smtplib.SMTPException:
                                 print("Email not send")
                                 return False
                                 # server.quit()





def OtpSend(length=2):
    letter=string.ascii_letters
    a=random.randint(10000,100000)
    otp = str(a).join(random.choice(letter) for i in range(length))
    x = str(dt.datetime.now())
    return(otp,x)
print(OtpSend)