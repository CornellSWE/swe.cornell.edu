<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim toname
Dim email
Dim directorship
Dim tdate

Dim event1
Dim eventdate1
Dim status1
Dim update1
Dim issues1

Dim event2
Dim eventdate2
Dim status2
Dim update2
Dim issues2

' get posted data into variables
toname = Request.Form("name")
email = Request.Form("email") 
directorship = Request.Form("directorship") 
tdate = Request.Form("date")

event1 = Request.Form("event1")
eventdate1 = Request.Form("eventdate1")
status1 = Request.Form("status1")
update1 = Request.Form("update1")
issues1 = Request.Form("issues1")

event2 = Request.Form("event2")
eventdate2 = Request.Form("eventdate2")
status2 = Request.Form("status2")
update2 = Request.Form("update2")
issues2 = Request.Form("issues2")

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
messagebody = messagebody & "Date: " & tdate &  vbCrLf 
messagebody = messagebody & "Directorship: " & directorship  & vbCrLf & vbCrLf 

messagebody = messagebody & "Event 1: " & event1 & vbCrLf 
messagebody = messagebody & "Event 1 Date: " & eventdate1 &  vbCrLf 
messagebody = messagebody & "Status: " & status1 & vbCrLf 
messagebody = messagebody & "Brief Event Update: " & vbCrLf & update1 & vbCrLf & vbCrLf 
messagebody = messagebody & "Issues to Note: " & vbCrLf & issues1 & vbCrLf  & vbCrLf 

messagebody = messagebody & "Event 2: " & event2 & vbCrLf 
messagebody = messagebody & "Event 2 Date: " & eventdate2 &  vbCrLf 
messagebody = messagebody & "Status: " & status2 & vbCrLf 
messagebody = messagebody & "Brief Event Update: " & vbCrLf & update2 & vbCrLf & vbCrLf
messagebody = messagebody & "Issues to Note: " & vbCrLf & issues2

' send email 
Dim mail
Set mail = Server.CreateObject("CDO.Message") 
mail.To = "corswe@gmail.com"
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
