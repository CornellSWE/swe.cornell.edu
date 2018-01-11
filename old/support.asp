<!-- #include file="navmain.inc" -->

<h1>Sponsor Us</h1>
		
		<p>We greatly appreciate your contributions and donations to SWE. Please fill out the form below if you would like to sponsor, 
		participate, or speak at an event.  More information about the programs and events that we organize can be found under "Our Programs".
		To donate to a specific directorship, please complete and send us the 
		<img src="imagesnew/icon_word.gif" alt = "Word"/> <a href="docs/donation_form.doc">Donation Form</a>.</p>
       	
	   <ul> <form action="supportMailSend.asp" method="POST">
		<table>
       		<tr>
				<td><b>Company Name:</b></td> 
				<td><input type="text" size="40" name="company" /></td>
			</tr>
			<tr>
				<td><b>Address:</b></td>
				<td><input type="text" size="40" name="address1" /></td>
			</tr>
			<tr>
			    <td></td>
				<td><input type="text" size="40" name="address2" /></td>
			</tr>
                <td><b>Company Contact</b></td>
			</tr>
			<tr>
               	<td><b>Name:</b></td> 
				<td><input type="text" size="40" name="name"></td>
			</tr>
			<tr>
                <td><b>Phone:</b></td> 
				<td><input type="text" size="40" name="phone"></td>
			</tr>
			<tr>
                <td><b>Email:</b></td> 
				<td><input type="text" size="40" name="email"></td>
			</tr>
		</table>
		
		<p><b>Event(s) you wish to sponsor:</b></p>
        <TEXTAREA name="events" rows=4 cols=60></TEXTAREA>
        
		<p><b>Amount you wish to donate:</b>  $<input type="text" name="amount"></p>
        
		<p><b>Prizes/Items you wish to donate:</b></p>
        <TEXTAREA name="items" rows=4 cols=60></TEXTAREA>
        
		<p><b>Do you wish to participate or speak at an event?</b></p>
        <input type="radio" name="speak" value="yes"> Yes
        <input type="radio" name="speak" value="no"> No
         
		<p><b>If so, which one(s)?</b></p>
        <TEXTAREA name="eventsSpeak" rows=4 cols=60></TEXTAREA>
        
		<p>
		<input type="submit" value="Send">
        <input type="reset" value="Clear Form">
		</p>		
		</form></ul>


</div> 

<!-- #include file="footer.inc" -->