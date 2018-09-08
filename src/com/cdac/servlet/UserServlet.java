package com.cdac.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cdac.MyConnection;
import com.cdac.action.MethodImp;
import com.cdac.beans.Feedback;
import com.cdac.beans.RegisterUser;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.cdac.MyConnection;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
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
		PrintWriter out=response.getWriter();
		if(request.getParameter("register")!=null)
		{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String cpassword=request.getParameter("cpassword");
			
			
			//To store all data coming from index.jsp page to RegisterBeans class
			RegisterUser ru=new RegisterUser();
			if(password.equals(cpassword))
			{
			ru.setName(name);
			ru.setEmail(email);
			ru.setPassword(password);
						
			Connection con=(Connection) com.cdac.MyConnection.getConnection();
			Statement stmt = null;
			try {
				stmt = con.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			MethodImp mi=new MethodImp();
			
			int i=mi.insertUser(stmt, ru);
			
			if(i>0)
			{
				out.println("<script>alert('Record Inserted Successfully');location='/itnotes/signup.jsp';</script>");
			}
			else
			{
				out.println("<script>alert('No Record Inserted');</script>");
			}
		
		}	
			if(!password.equals(cpassword))
			{
				out.println("<script>alert('password aur confirm password not match');location='/itnotes/signup.jsp';</script>");
			}
		}

		if(request.getParameter("feedback")!=null)
		{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String mobile=request.getParameter("mobile");
			String category=request.getParameter("category");
			String feed=request.getParameter("feedback");
			Feedback fd=new Feedback();
			fd.setUsername(name);
			fd.setEmail(email);
			fd.setMobile(mobile);
			fd.setCategory(category);
			fd.setFeed(feed);
			
			Connection con=(Connection) com.cdac.MyConnection.getConnection();
			Statement stmt = null;
			try {
				stmt = con.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			MethodImp mi=new MethodImp();
			
			int i=mi.insertFeedBack(stmt, fd);
			
			if(i>0)
			{
				out.println("<script>alert('Feedbac Successfully Sent');location='/itnotes/feedback.jsp';</script>");
			}
			else
			{
				out.println("<script>alert('Feedback  not Successfully Sent');location='/itnotes/feedback.jsp';</script>");
			}
		}
		
		if(request.getParameter("login")!=null)
		{
		String user="",pass="";
		response.setContentType("text/html");
		
		String un = request.getParameter("uname");
		String pwd = request.getParameter("pass");
		Connection con=(Connection) MyConnection.getConnection();
		try {
			Statement stmt=(Statement) con.createStatement();
			ResultSet rs= (ResultSet) stmt.executeQuery("select * from register where email='"+un+"' and password='"+pwd+"'");
			while(rs.next())
			{
				 user=rs.getString("email");
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
			session.setAttribute("uname", un);
			session.setMaxInactiveInterval(30); // 30 seconds
			response.sendRedirect("indexlogin.jsp");
		} else {
			//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			out.println("<center><h1><font color=red>Either user name or password is wrong.<a href='/itnotes/login.jsp'>Please Relogin</a></font></h1></center>");			//rd.include(request, response);
		}
		
		}

		if(request.getParameter("updatepassword")!=null)
		{
			Connection  con =(Connection) MyConnection.getConnection();
			String old=null;
			HttpSession session = request.getSession();
			if(session.getAttribute("uname")!= null) 
			{
				String user = (String) session.getAttribute("uname");
				String oldpass=request.getParameter("cpassword");
				String pass=request.getParameter("npassword");
				String conf=request.getParameter("upassword");
				try {
					Statement stmt=con.createStatement();
					String query="select password from register where email='"+user+"'";
					ResultSet rs=(ResultSet) stmt.executeQuery(query);
					if(rs.next())
					{
						old=rs.getString("password");
					}
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				
				if(oldpass.equals(old)&& pass.equals(conf))
				{
				
				try 
				{
					PreparedStatement ps=con.prepareStatement("update register set password=? where email=?");
					ps.setString(1, pass);
					ps.setString(2, user);
					int i=ps.executeUpdate();
					if(i>0)
					{
						out.println("<script>alert('Password updated Successfully');location='/itnotes/changepassword.jsp';</script>");
					}
					//response.sendRedirect("admin/university.jsp");
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				}
				
			} else {
				out.println("<script>alert('Oops...Sorry..You have enter a data wrong.........!!Try again.. :)');location='/itnotes/changepassword.jsp';</script>");
			}
	}
		
		if(request.getParameter("updateprofile")!=null)
		{
			Connection  con =(Connection) MyConnection.getConnection();
				
				String fname=request.getParameter("firstname");
				String lname=request.getParameter("lastname");
				String gender=request.getParameter("gender");
				String date = request.getParameter("dob");
			    				
				String email=request.getParameter("email");
				
				String city=request.getParameter("city");
				
				try 
				{
					PreparedStatement ps=con.prepareStatement("update register set firstname=?,lastname=?,gender=?,dob=?,city=? where email=?");
					ps.setString(1, fname);
					ps.setString(2, lname);
					ps.setString(3, gender);
					ps.setString(4,date);
					ps.setString(5, city);
					ps.setString(6, email);
					int i=ps.executeUpdate();
					if(i>0)
					{
						out.println("<script>alert('User Profile Updated Successfully');location='/itnotes/updateprofile.jsp';</script>");
					}
					//response.sendRedirect("admin/university.jsp");
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
				
			
	}


}




