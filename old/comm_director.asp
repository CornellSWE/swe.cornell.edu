<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>Society of Women Engineers</title>
	<link type="text/css" rel="stylesheet" href="default.css" />
</head>

<body>
<div id = "wrapper">
	<!-- #include file="menu.inc" -->

	<div id = "contents">
		<h1>Director Communication Sheet</h1>
		
		<form action="dirMailSend.asp" method="post">
		<table>
			<tr>
				<td><b>Name: </b></td>
				<td><input type="text" size="40" name="name"></td>
			</tr>
			<tr>
				<td><b>Email: </b></td>
				<td><input type="text" size="40" name="email"></td>
			</tr>
			<tr>
				<td><b>Date: </b></td>
				<td><input type="text" size="40" name="date"></td>
			</tr>
			<tr>
				<td><b>Directorship: </b></td>
				<td><input type="text" size="40" name="directorship"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
		
		<table>
			<tr>
				<td><b>Event 1: </b></td>
				<td><input type="text" size="40" name="event1"></td>
			</tr>
			<tr>
				<td><b>Event Date: </b></td>
				<td><input type="text" size="40" name="eventdate1"></td>
			</tr>
			<tr>
				<td><b>Status: </b></td>
				<td><input type="radio" name="status1" value="On Track"> On Track 
				<input type="radio" name="status1" value="In Danger"> In Danger 
				</td>
			</tr>
		</table>

		<p><b>Brief Event Update:</b></p>
		<textarea name="update1" rows=6 cols=60></textarea>
		
		<p><b>Issues to Note:</b></p>
		<textarea name="issues1" rows=6 cols=60></textarea>
	
		<table>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><b>Event 2: </b></td>
				<td><input type="text" size="40" name="event2"></td>
			</tr>
			<tr>
				<td><b>Event Date: </b></td>
				<td><input type="text" size="40" name="eventdate2"></td>
			</tr>
			<tr>
				<td><b>Status: </b></td>
				<td><input type="radio" name="status2" value="On Track"> On Track 
				<input type="radio" name="status2" value="In Danger"> In Danger 
				</td>
			</tr>
		</table>
	
		<p><b>Brief Event Update:</b></p>
		<textarea name="update2" rows=6 cols=60></textarea>

		<p><b>Issues to Note:</b></p>
		<textarea name="issues2" rows=6 cols=60></textarea>
		
		<p>
		<input type="submit" value="Send">
		<input type="reset" value="Clear Form">
		</p>
	
		</form>
	</div> <!-- END div#contents -->
	
	<img src = "imagesnew/footer_inner.jpg" alt = "Society of Women Engineers"/>
	</div> <!-- END div#inner -->
	
	<img id = "footer" src = "imagesnew/footer.jpg" alt = "Society of Women Engineers"/>
</div> <!-- END div#wrapper -->
</body>
</html>