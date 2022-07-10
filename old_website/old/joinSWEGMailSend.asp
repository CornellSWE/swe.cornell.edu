<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim email

' get posted data into variables
email = Request.Form("email") 

' validation
Dim validationOK
validationOK=true
If (Trim(email)="") Then validationOK=false
If (validationOK=false) Then Response.Redirect("send_error.asp")

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message") 
mail.To = "gradswe-l-request@cornell.edu"
mail.From = email
mail.Subject = ""
mail.TextBody = "join"
mail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
mail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
mail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") =  "appsmtp.mail.cornell.edu"
mail.Configuration.Fields.Update()
mail.Send
Set mail= nothing

' redirect to success page 
Response.Redirect("gsend_join_ok.asp")
%>
