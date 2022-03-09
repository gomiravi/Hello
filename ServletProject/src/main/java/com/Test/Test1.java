package com.Test;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test1
 */
@WebServlet("/Test1")
public class Test1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Test1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served it ").append(request.getContextPath());

		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
	try	{
			
			Class.forName("com.mysql.cj.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root", "Root@1234");

			stmt = con.createStatement();

			rs = stmt.executeQuery("Select *  from salary");

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String salary = rs.getString("salary");

				out.println("ID: " + id + "<br>");
				out.println(", Name: " + name + "<br>");
				out.println(", Salary: " + salary + "<br>");

				out.println("</body></html>");
			}
	}
			catch(Exception e)
			{
				System.out.print(e);
			}
		}
	
}

	
	

