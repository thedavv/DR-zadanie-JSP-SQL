<%@page import="sk.racek.DBStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="sk.racek.DBConection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="personBean" class="sk.racek.PersonBean" scope="session" />
<jsp:setProperty property="*" name="personBean" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con = DBConection.getConection(DBConection.DEFAULT_URL, DBConection.DEFAULT_USERNAME, "david");
	DBStatement.executeInsertStatementToPersonTable(con, personBean, "person.person");
	System.out.println("saved");
	con.close();
%>
<a href="PersonInsertForm.jsp">back</a>
</body>
</html>
