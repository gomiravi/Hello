<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection conn = null;
try{
	Class.forName("com.mysql.jdbc.Driver");

	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/directive", "root", "Root@1234");
	%>



	<h1>USERS TABLE</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Degree</th>
		</tr>
		<%
		Statement stm = conn.createStatement();
		String s = "SELECT * FROM student1";
		ResultSet r = stm.executeQuery(s);
		while (r.next()) {
			out.print("<tr>");
			out.print("<td>" + r.getString("Sid") + "</td>");
			out.print("<td>" + r.getString("Sname") + "</td>");
			out.print("<td>" + r.getString("Sdegree") + "</td>");

			//out.print("<td>" +  "<input type=button value='Delete'/>"+ "</td>");
			out.print("</tr>");
		}
}catch (SQLException e) { 

	   e.printStackTrace(); 
	  } 
		%>
	</table>
</body>
</html>






