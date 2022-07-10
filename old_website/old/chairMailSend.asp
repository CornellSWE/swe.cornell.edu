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
Dim eventdate
Dim progressReport
Dim eventChange
Dim adminIdea

' get posted data into variables
toname = Request.Form("name")
email = Request.Form("email") 
director = Request.Form("director") 
tdate = Request.Form("date")
eventdate = Request.Form("eventdate") 
progressReport = Request.Form("progressReport") 
eventChange = Request.Form("eventChange") 
adminIdea = Request.Form("adminIdea") 

' validation
Dim validationOK
validationOK=true
If (Trim(email)="") Then validationOK=false
If (Trim(tdate)="") Then validationOK=false
If (Trim(toname)="") Then validationOK=false
If (validationOK=false) Then Response.Redirect("send_error.asp")

' prepare email body text
Dim messagebody 
messagebody = messagebody & "Name: " & toname & vbCrLf 
messagebody = messagebody & "Email: " & email & vbCrLf 
messagebody = messagebody & "Date: " & tdate & vbCrLf & vbCrLf 
messagebody = messagebody & "Event Date: " & eventdate & vbCrLf & vbCrLf 
messagebody = messagebody & "Event Progress Report: " & progressReport & vbCrLf & vbCrLf 
messagebody = messagebody & "Idea for Event Change: " & eventChange  & vbCrLf & vbCrLf 
messagebody = messagebody & "Idea for SWE Administrative Management Progress: " & adminIdea

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message")
mail.To = director
mail.Cc = "corswe@gmail.com"
mail.From = email
mail.Subject = "Communication Sheet: " & tdate
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
