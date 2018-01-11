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
		<h1>Chair Communication Sheet</h1>
		
		<form action="chairMailSend.asp" method="POST">
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
				<td><b>Event Date: </b></td>
				<td><input type="text" size="40" name="eventdate"></td>
			</tr>
		</table>
		
		<p><b>Committee/Event:</b></p>
		<input type="radio" name="director" value="clc242@cornell.edu, eht26@cornell.edu"> Career Development<br>
		<input type="radio" name="director" value="swecis@cornell.edu"> Corporate Relations<br />
		<input type="radio" name="director" value="cornellswe@gmail.com"> Fundraising<br>
		<input type="radio" name="director" value="cornellswe@gmail.com"> Public Relations<br>
		<input type="radio" name="director" value="cjc266@cornell.edu, kd255@cornell.edu"> Outreach<br>
		<input type="radio" name="director" value="baw39@cornell.edu, myz4@cornell.edu"> Student Services<br>
	
		<p><b>Event Progress Report:</b></p>
		<TEXTAREA name="progressReport" rows=6 cols=60></TEXTAREA>

		<p><b>Idea for Event Change:</b></p>
		<TEXTAREA name="eventChange" rows=6 cols=60></TEXTAREA>

		<p><b>Idea for Change in Service or Method</b></p>
		<TEXTAREA name="methodChange" rows=6 cols=60></TEXTAREA>

		<p><b>Idea for SWE Administrative Management Progress:</b></p>
		<TEXTAREA name="adminIdea" rows=6 cols=60></TEXTAREA>

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