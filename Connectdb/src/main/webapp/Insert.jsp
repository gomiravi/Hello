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
	Statement stmt = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:33076/directive", "root", "Root@1234");
		//out.println("connected..!");
		String insert = "insert into student1(Sid,Sname,Sdegree) values(5,'Deepa','98934562')'";

		/*ps = conn.prepareStatement(insert);
		ps.setInt(1, Sid);
		ps.setString(2,Sname);
		ps.setString(3, Sdegree);*/
		int n = ps.executeUpdate();
		if (n > 0)
			out.println(n+" inserted successfully...!");

	} catch (Exception e) {
		out.println("error:" + e);
	}
	%>


</body>
</html>