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
		<form action="adminlogin" method="post" >
			<h1> Admin Login</h1>
			<label for="username"  class="form-elements"><b>Username</b></label>
			<br>
			<input id="username" name="adminName" class="form-elements form-input" type="text"/> 
			<br>
			<label for="password" class="form-elements"><b>Password</b></label>
			<br>
			<input id="password" name="password" class="form-elements form-input" type="password"/> 
			<br>
			<button type="Submit" class="form-elements form-button"> Login</button>
			<br>

		</form>
	</div>
       
</body>
</html>