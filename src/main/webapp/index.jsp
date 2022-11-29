<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Vote</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%@include file="Navbar.jsp" %>
	<div class="form-container">
		<form action="voterlogin" method="post">
			<h1> Enter Voter Card Number</h1>
			<label for="voterNumber" class="form-elements"><b>Voter ID:</b></label>
			<br>
			<input id="voterNumber" name="voterID" class="form-elements form-input" type="text"/> 
			<br>
			<button type="Submit"  class="form-elements form-button"> Login</button>
			<a class="adminlog" href="adminlogin.jsp"> Admin login</a>
		</form>
	</div>
       
</body>
</html>