<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim toname
Dim email
Dim director
Dim tdate
Dim subject
Dim inquiry

' get posted data into variables
toname = Request.Form("name")
email = Request.Form("email")
director = Request.Form("director")
tdate = Request.Form("date")
subject = Request.Form("subject")
inquiry = Request.Form("inquiry")

' validation
Dim validationOK
validationOK=true
If (Trim(email)="") Then validationOK=false
If (Trim(toname)="") Then validationOK=false
If (Trim(director)="") Then validationOK=false
If (Trim(subject)="") Then validationOK=false
If (validationOK=false) Then Response.Redirect("send_error.asp")

' prepare email body text
Dim messagebody 
messagebody = messagebody & "Name: " & toname & vbCrLf 
messagebody = messagebody & "Email: " & email & vbCrLf 
messagebody = messagebody & "Date: " & tdate & vbCrLF 
messagebody = messagebody & "Inquiry: " & inquiry & vbCrLf 

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message") 
mail.To = director
mail.Cc = "corswe@gmail.com"
mail.From = email
mail.Subject = "Inquiry: " & subject
mail.TextBody = messagebody
mail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
mail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
mail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") =  "appsmtp.mail.cornell.edu"
mail.Configuration.Fields.Update()
mail.Send
Set mail= nothing

' redirect to success page 
Response.Redirect("send_ok.asp")
%>
