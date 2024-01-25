<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="java.util.Date,java.text.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="/update/${user.id}"   method="post">

		    <input type="text" value=" ${user.name}" name="name" placeholder="Enter name" required="required"> <br><br>
			<input type="text" name="lastname" value=" ${user.lastname}" placeholder="Enter lastname" required="required"><br><br>
	     	<input type="text" name="email" value=" ${user.email}" placeholder="Enter Email" required="required"><br><br>
	
			<input type="submit" value="Update">
	
	</form>

</body>
</html>