<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim toname
Dim email
Dim eventName
Dim eventDate
Dim eventPlace
Dim publicity
Dim tdescription

' get posted data into variables
toname = Request.Form("name")
email = Request.Form("email")
eventName = Request.Form("eventName")
eventDate = Request.Form("eventDate")
eventPlace = Request.Form("eventPlace")
publicity = Request.Form("publicity")
guests = Request.Form("guests")

' validation
Dim validationOK
validationOK=true
If (Trim(email)="") Then validationOK=false
If (Trim(toname)="") Then validationOK=false
If (Trim(eventDate)="") Then validationOK=false
If (validationOK=false) Then Response.Redirect("send_error.asp")

' prepare email body text
Dim messagebody 
messagebody = messagebody & "Name: " & toname & vbCrLf 
messagebody = messagebody & "Email: " & email & vbCrLf 
messagebody = messagebody & "Event Name: " & eventName & vbCrLf
messagebody = messagebody & "Event Time: " & eventDate & vbCrLf 
messagebody = messagebody & "Event Place: " & eventPlace & vbCrLf 
messagebody = messagebody & "Publicity: " & publicity & vbCrLf 
messagebody = messagebody & "Description: " & guests & vbCrLf 

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message") 
mail.To = "cornellswe@gmail.com, hd77@cornell.edu"
mail.Cc = "corswe@gmail.com"
mail.From = email
mail.Subject = "SWE Publicity: Poster by " & eventDate
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
