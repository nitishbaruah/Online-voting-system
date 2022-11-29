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
		<form action="contact" method="post">
			<h1> Enter Voter Card Number</h1>
			<label for="name" class="form-elements "><b>Name:</b></label>
			<br>
			<input id="name" name="name" class="form-elements form-input" type="text"/> 
			<br>
			<label for="number" class="form-elements "><b>Phone number:</b></label>
			<br>
			<input id="number" name="number" class="form-elements form-input" type="text"/> 
			<br>
			<label for="email"  class="form-elements"><b>Email:</b></label>
			<br>
			<input id="email" name="email" class="form-elements form-input" type="text"/> 
			<br>
			<label for="Comment" class="form-elements"><b>Comment:</b></label>
			<br>
			<textarea id="Comment" name="comment" class="form-elements form-input" ></textarea>
			<br>
			<button type="Submit" class="form-elements form-button"> Submit</button>
		</form>
	</div>
       
</body>
</html>