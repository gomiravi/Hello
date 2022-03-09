<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int x=Integer.parseInt(request.getParameter("no1"));
int y=Integer.parseInt(request.getParameter("no2"));
out.print("sum is:"+(x+y));
%>
<% 
out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>
 <%--response.sendRedirect("http://www.google.com");--%>
 
</body>
</html>