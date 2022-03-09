<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="Second.jsp">

<%
String name=request.getParameter("uname");
out.print("welcome to my page"+name);
session.setAttribute("user", name);

%>
</form></body>
</html>