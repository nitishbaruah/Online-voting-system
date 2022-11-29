<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Vote</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<%
   
    String a[] = new String[100];
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingDB","root","Nitish");
	
	PreparedStatement preparedStatement = con.prepareStatement("select party,count(party) as c from vote group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as c from vote group by party");
	
    int i=0;
    while(rs.next()){
        a[i] = rs.getString("c");
        i++;
    }
    %>
</head>

<body>
<%@include file="adminnavbar.jsp" %>
<table class="checkTable">
<tr>
<th>
Parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>
<tr>
<td>
<img src="images/Aam_Aadmi_Party_logo_(English).svg.png" alt="AAP">
</td>
<td> Aam Aadmi Party</td>
<td><%=a[0]%></td>
 </tr>  
 <tr>
<td>
<img src="images/Bharatiya_Janata_Party_logo.svg.webp" alt="BJP">
</td>
<td> Bhartiya Janta Party</td>
<td><%=a[1]%></td>
 </tr>
 <tr>
<td>
<img src="images/Elephant_Bahujan_Samaj_Party.svg.png" alt="BSP">
</td>
<td> Bhujan Samaj Part</td>
<td><%=a[2]%></td>
 </tr>
 <tr>
<td>
<img src="images/Indian_National_Congress_hand_logo.png" alt="Congress">
</td>
<td> Congress</td>
<td><%=a[3]%></td>
 </tr>
 </table>
</body> 
</html>