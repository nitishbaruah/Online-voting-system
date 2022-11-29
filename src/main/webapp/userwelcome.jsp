<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome User !</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%@ include file="Navbar.jsp"%> 
<body>
<div class="form-container">
<form action="vote" method="post" >

<label for="voterNumber" class="form-elements "><b>Enter your voter card number</b></label>
<br>
<input id="voterNumber" name="voterNumber" class="form-elements form-input" type="text"/>
<br>

<label for="partie" class="form-elements "><b>Choose your partie</b></label>
<br>
<select name="partie" id="partie" class="form-elements form-input">
<option value="Aam Aadmi Party">Aam Aadmi Party</option>
<option value="BJP">BJP</option>
<option value="BSP">BSP</option>
<option value="Congress">Congress</option>
</select>
<br>

<button type="Submit" class="form-elements form-button">Submit</button>

</form>
</div>


</body>
</html>