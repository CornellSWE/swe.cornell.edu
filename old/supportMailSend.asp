<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim company
Dim address1
Dim address2
Dim toname
Dim phone
Dim email
Dim events
Dim amount
Dim items 
Dim speak
Dim eventsSpeak

' get posted data into variables
company = Request.Form("company")
address1 = Request.Form("address1")
address2 = Request.Form("address1")
toname = Request.Form("name")
phone = Request.Form("phone")
email = Request.Form("email")
events = Request.Form("events")
amount = Request.Form("amount")
items = Request.Form("items")
speak = Request.Form("speak")
eventsSpeak = Request.Form("eventsSpeak") 

' validation
Dim validationOK
validationOK=true
If (Trim(email)="") Then validationOK=false
If (Trim(nameCompany)="") Then validationOK=false
If (validationOK=false) Then Response.Redirect("send_error.asp")

' prepare email body text
Dim messagebody 
messagebody = messagebody & "Company Name: " & nameCompany & VbCrLf 
messagebody = messagebody & "Address: " & address1 & vbCrLF 
messagebody = messagebody & address2 & vbCrLF 
messagebody = messagebody & "Contact Name: " & fromname &  VbCrLf 
messagebody = messagebody & "Phone: " & phone & VbCrLf 
messagebody = messagebody & "Email: " & email & VbCrLf & vbCrLf 
messagebody = messagebody & "Events to sponsor: " & events & vbCrLf & vbCrLf 
messagebody = messagebody & "Amount to sponsor: $ " & amount & vbCrLf 
messagebody = messagebody & "Items to donate: " & items & vbCrLf & vbCrLf 
messagebody = messagebody & "Speak at an event?: " & speak & vbCrLf 
messagebody = messagebody & "Events to speak at: " & eventsSpeak

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message") 
mail.To = "corswe@gmail.com"
mail.From = email
mail.Subject = "Sponsorship: " & nameCompany
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
