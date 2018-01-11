<%
' Website Contact Form Generator 
' http://www.tele-pro.co.uk/scripts/contact_form/ 
' This script is free to use as long as you  
' retain the credit link  

' declare variables
Dim company

Dim rep_title
Dim rep_name
Dim rep_address1
Dim rep_address2
Dim rep_phone1
Dim rep_phone2
Dim rep_phone3
Dim rep_fax1
Dim rep_fax2
Dim rep_fax3
Dim rep_email

Dim bill_name
Dim bill_address1
Dim bill_address2
Dim bill_phone1
Dim bill_phone2
Dim bill_phone3
Dim bill_fax1
Dim bill_fax2
Dim bill_fax3
Dim bill_email

Dim prefdate
Dim preftime1
Dim preftime2
Dim preftime3
Dim preflocation
Dim attendance
Dim preffood
Dim prefappetizer

Dim equip1
Dim equip2
Dim equip3
Dim equip4
Dim equipother
Dim equipbring

Dim prefinterview
Dim prefmajors

Dim prefraffle

Dim extracdnum
Dim extracdcost

Dim comments 
Dim send_name
Dim send_date

' get posted data into variables
company = Request.Form("company")

rep_title = Request.Form("rep_title")
rep_name = Request.Form("rep_name")
rep_address1 = Request.Form("rep_address1")
rep_address2 = Request.Form("rep_address2")
rep_phone1 = Request.Form("rep_phone1")
rep_phone2 = Request.Form("rep_phone2")
rep_phone3 = Request.Form("rep_phone3")
rep_fax1 = Request.Form("rep_fax1")
rep_fax2 = Request.Form("rep_fax2")
rep_fax3 = Request.Form("rep_fax3")
rep_email = Request.Form("rep_email")

bill_name = Request.Form("bill_name")
bill_address1 = Request.Form("bill_address1")
bill_address2 = Request.Form("bill_address2")
bill_phone1 = Request.Form("bill_phone1")
bill_phone2 = Request.Form("bill_phone2")
bill_phone3 = Request.Form("bill_phone3")
bill_fax1 = Request.Form("bill_fax1")
bill_fax2 = Request.Form("bill_fax2")
bill_fax3 = Request.Form("bill_fax3")
bill_email = Request.Form("bill_email")

prefdate = Request.Form("prefdate")
preftime1 = Request.Form("preftime1")
preftime2 = Request.Form("preftime2")
preftime3 = Request.Form("preftime3")
preflocation = Request.Form("preflocation")
attendance = Request.Form("attendance")
preffood = Request.Form("preffood")
prefappetizer = Request.Form("prefappetizer")

equip1 = Request.Form("equip1")
equip2 = Request.Form("equip2")
equip3 = Request.Form("equip3")
equip4 = Request.Form("equip4")
equipother = Request.Form("equipother")
equipbring = Request.Form("equipbring")

prefinterview = Request.Form("prefinterview")
prefmajor1 = Request.Form("prefmajor1")
prefmajor2 = Request.Form("prefmajor2")
prefmajor3 = Request.Form("prefmajor3")
prefmajor4 = Request.Form("prefmajor4")
prefmajor5 = Request.Form("prefmajor5")
prefmajor6 = Request.Form("prefmajor6")
prefmajor7 = Request.Form("prefmajor7")
prefmajor8 = Request.Form("prefmajor8")
prefmajor9 = Request.Form("prefmajor9")
prefmajor10 = Request.Form("prefmajor10")
prefmajor11 = Request.Form("prefmajor11")
prefmajor12 = Request.Form("prefmajor12")

prefraffle = Request.Form("prefraffle")

extracdnum = Request.Form("extracdnum")
extracdcost = Request.Form("extracdcost")

comments = Request.Form("comments")
send_name = Request.Form("send_name")
send_date = Request.Form("send_date")

' validation
Dim validationOK
validationOK=true
If (Trim(company)="") Then validationOK=false
If (Trim(rep_name)="") Then validationOK=false
If (Trim(rep_email)="") Then validationOK=false
If (Trim(prefdate)="") Then validationOK=false
If (Trim(send_name)="") Then validationOK=false
If (Trim(send_date)="") Then validationOK=false
If (validationOK=false) Then Response.Redirect("send_error.asp")

' prepare email body text
Dim messagebody 
messagebody = messagebody & "Company: " & company & vbCrLf & vbCrLf

messagebody = messagebody & "Rep Name: " & rep_title & rep_name & vbCrLf 
messagebody = messagebody & "Rep Address: " & rep_address1 & vbCrLF 
messagebody = messagebody & rep_address2 & vbCrLF 
messagebody = messagebody & "Rep Phone: " & rep_phone1 & "-" & rep_phone2 & "-" & rep_phone3 & vbCrLf 
messagebody = messagebody & "Rep Fax: " & rep_fax1 & "-" & rep_fax2 & "-" & rep_fax3 & vbCrLf 
messagebody = messagebody & "Rep Email: " & rep_email & vbCrLF & vbCrLF 

messagebody = messagebody & "Billing Name: " & bill_name & vbCrLf 
messagebody = messagebody & "Billing Address: " & bill_address1 & vbCrLF 
messagebody = messagebody & bill_address2 & vbCrLF 
messagebody = messagebody & "Billing Phone: " & bill_phone1 & "-" & bill_phone2 & "-" & bill_phone3 & vbCrLf 
messagebody = messagebody & "Billing Fax: " & bill_fax1 & "-" & bill_fax2 & "-" & bill_fax3 & vbCrLf
messagebody = messagebody & "Billing Email: " & bill_email & vbCrLF & vbCrLF 

messagebody = messagebody & "Preferred Date(s): " & prefdate & vbCrLf 
messagebody = messagebody & "Preferred Time(s): " & preftime1 & " " & preftime2 & " " & preftime3 & vbCrLf 
messagebody = messagebody & "Preferred Location: " & preflocation & vbCrLf 
messagebody = messagebody & "Expected Attendance: " & attendance & vbCrLf & vbCrLf 

messagebody = messagebody & "Food Choice Option: " & preffood & vbCrLf 
messagebody = messagebody & "Appetizer Choice Option: " & prefappetizer & vbCrLf & vbCrLf 

messagebody = messagebody & "Equipment: " & equip1 & " " & equip2 & " " & equip3 & " " & equip4 & vbCrLf 
messagebody = messagebody & "Other Equipment: " & equipother & vbCrLf 
messagebody = messagebody & "Bringing Equipment: " & equipbring & vbCrLf & vbCrLf 

messagebody = messagebody & "Interview Dates: " & prefinterview & vbCrLf 
messagebody = messagebody & "Interested Majors: " & prefmajor1 & " " & prefmajor2 & " " & prefmajor3 & " " & prefmajor4 & " " & prefmajor5 & " " & prefmajor6 & " " & prefmajor7 & " " & prefmajor8 & " " & prefmajor9 & " " & prefmajor10 & " " & prefmajor11 & " " & prefmajor12 & vbCrLf & vbCrLf


messagebody = messagebody & "Advertising/Raffle Items: " & prefraffle & vbCrLf & vbCrLf 

messagebody = messagebody & "Extra Resume CDs: " & extracdnum & vbCrLf 
messagebody = messagebody & "Extra Resume CD Cost: $" & extracdcost & vbCrLf & vbCrLf 

messagebody = messagebody & "Comments: " & comments

' send email swecis@cornell.edu
Dim mail
Set mail = Server.CreateObject("CDO.Message") 
mail.To = "swecis@cornell.edu"
mail.From = rep_email
mail.Subject = "CR Setup Form: " & company
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
