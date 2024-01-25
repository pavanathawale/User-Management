<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Fill The Form</h1>

<form action="saveData" method="post">

	        <input type="text" name="name" placeholder="Enter name" required="required"> <br><br>
			<input type="text" name="lastname" placeholder="Enter lastname" required="required"><br><br>
	     	<input type="text" name="email" placeholder="Enter Email" required="required"><br><br>
	
			<input type="submit" value="Submit">
			
</form>
</body>
</html>