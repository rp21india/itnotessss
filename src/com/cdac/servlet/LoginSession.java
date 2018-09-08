package com.cdac.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cdac.MyConnection;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
/**
 * Servlet implementation class LoginSession
 */
public class LoginSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSession() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String user="",pass="";
		if(request.getParameter("adminlogin")!=null)
		{
		
		response.setContentType("text/html");
		
		String un = request.getParameter("username");
		String pwd = request.getParameter("password");
		Connection con=(Connection) MyConnection.getConnection();
		try {
			Statement stmt=(Statement) con.createStatement();
			ResultSet rs= (ResultSet) stmt.executeQuery("select * from adminlogin where user='"+un+"' and password='"+pwd+"'");
			while(rs.next())
			{
				 user=rs.getString("user");
				 pass=rs.getString("password");
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if (un.equals(user)&& pwd.equals(pass)) {
			out.print("Welcome, " + un);
			HttpSession session = request.getSession(true); // reuse existing
															// session if exist
															// or create one
			session.setAttribute("user", un);
			session.setMaxInactiveInterval(30); // 30 seconds
			response.sendRedirect("admin/dashboard.jsp");
		} else {
			//RequestDispatcher rd = request.getRequestDispatcher("admin/index.jsp");
			out.println("<center><h1><font color=red>Either user name or password is wrong.<a href='/itnotes/admin/index.jsp'>Please Relogin</a></font></h1></center>");
			//rd.include(request, response);
		}
		
		
		
		}
		
		
		
		
	}

}
