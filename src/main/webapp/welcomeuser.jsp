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
		<form>
			<h2> Enter your Voter Card Number</h2>
			<label for="voterNumber" class="form-elements form-label"><b>Voter ID</b></label>
			<br>
			<input id="voterNumber" class="form-elements form-input" type="text"/> 
			<br>
			<label for="selectpartie" class="form-elements form-label"><b>Choose Party</b></label>
			<br>
			<select id="selectpartie" class="form-elements form-input">
			<option value="Aam Aadmi Party"> Aam Aadmi Party</option>
			<option value="BJP"> BJP </option>
			<option value="BSP"> BSP</option>
			<option value="Congress"> Congress</option>
			</select>
			<button type="Submit" class="form-elements form-button"> Submit</button>
			
		</form>
	</div>
       
</body>
</html>