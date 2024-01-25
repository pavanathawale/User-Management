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
	<div align="center">
		<h1>Employee list</h1>

		<h1>____________</h1>

		<a href="reg">
			<h3>add Employee</h3>
		</a>

		<table border="1"  >
			<thead>
				<tr>
					<th>User name</th>
					<th>User lastname</th>
					<th>User email</th>
					<th>Actions</th>
					<th>Actions</th>

				</tr>
			</thead>
			<tbody>


				<c:forEach items="${list}" var="person">
					<tr>
						<td>${person.name}</td>
						<td>${person.lastname}</td>
						<td>${person.email}</td>
						<td><a href="showFormForUpdate/${person.id}">
								Update</a></td>
						<td><a href="DeleteEmployee/${person.id}">
								Delete</a></td>
					</tr>
				</c:forEach>


			</tbody>

		</table>
	</div>
</body>

</html>