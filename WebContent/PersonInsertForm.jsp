<%@page import="sk.racek.DBStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="sk.racek.DBConection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertion into Person</title>
</head>
<body>
	<form method="post" action="insertIntoDB.jsp">
		<p>
			Name: <input type="text" name="name" size=20>
		</p>
		<p>
			Email: <input type="text" name="email" size=20>
		</p>
		<p>
			Age: <input type="text" name="age" size=3>
		</p>
		<input type="submit" value="Submit">
	</form>
</body>
</html>