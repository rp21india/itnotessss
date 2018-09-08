package com.cdac.servlet;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.cdac.MyConnection;


/**
 * Servlet implementation class myservlet
 */
@WebServlet("/myservlet")
public class myservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =response.getWriter();
		Connection con=(Connection) MyConnection.getConnection();
		if(request.getParameter("adduniversity")!=null)
		{
			String un=request.getParameter("university");
			String co=request.getParameter("course");
			
			
			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into university (uname,address) values(?,?)");
				ps.setString(1, un);
				ps.setString(2, co);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/university.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(request.getParameter("addcourse")!=null)
		{
			int  un= Integer.parseInt(request.getParameter("university"));
			String co=request.getParameter("course");
			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into course (uid,course) values(?,?)");
				ps.setInt(1, un);
				ps.setString(2, co);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/course.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		if(request.getParameter("addyearsem")!=null)
		{
			int  un= Integer.parseInt(request.getParameter("university"));
			int  co= Integer.parseInt(request.getParameter("course"));
			String year=request.getParameter("yearsem");
			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into yearsem (uid,cid,yearsem) values(?,?,?)");
				ps.setInt(1, un);
				ps.setInt(2, co);
				ps.setString(3, year);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/yearsem.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		if(request.getParameter("addsubject")!=null)
		{
			int  un= Integer.parseInt(request.getParameter("university"));
			int  co=Integer.parseInt(request.getParameter("course"));
			int  yearsem=Integer.parseInt(request.getParameter("yearsem"));
			String subject=request.getParameter("subject");
			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into subject (uid,cid,yid,sname) values(?,?,?,?)");
				ps.setInt(1, un);
				ps.setInt(2, co);
				ps.setInt(3, yearsem);
				ps.setString(4, subject);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/subject.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

		if(request.getParameter("addtechnology")!=null)
		{
			String tech=request.getParameter("technology");

			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into technology (technology) values(?)");
				ps.setString(1, tech);

				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/programs.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		if(request.getParameter("addtopics")!=null)
		{
			int  tech= Integer.parseInt(request.getParameter("technology"));
			String topics=request.getParameter("topics");
			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into topics (techid,topics) values(?,?)");
				ps.setInt(1, tech);
				ps.setString(2, topics);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/programs.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		if(request.getParameter("addprogram")!=null)
		{
			int  tech= Integer.parseInt(request.getParameter("technology"));
			int  topics= Integer.parseInt(request.getParameter("topics"));
			String program=request.getParameter("program");
			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into program (techid,tid,program) values(?,?,?)");
				ps.setInt(1, tech);
				ps.setInt(2, topics);
				ps.setString(3, program);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/programs.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

		if(request.getParameter("addprojecttitle")!=null)
		{
			String project=request.getParameter("project");

			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into title (title) values(?)");
				ps.setString(1, project);

				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/project.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		if(request.getParameter("addppttechnology")!=null)
		{
			String tech=request.getParameter("technology");

			try {
				PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into ptechnology (ptechnology) values(?)");
				ps.setString(1, tech);

				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/ppt.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		
		if(request.getParameter("addppttopics")!=null)
		{
			int  tech= Integer.parseInt(request.getParameter("technology"));
			String topics=request.getParameter("topics");
			try 
			{
				PreparedStatement ps=con.prepareStatement("insert into ptopics (ptech_id,ptopics) values(?,?)");
				ps.setInt(1, tech);
				ps.setString(2, topics);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/ppt.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		if(request.getParameter("addpost")!=null)
		{
			String  post=request.getParameter("post");
			String url=request.getParameter("url");
			try 
			{
				PreparedStatement ps=con.prepareStatement("insert into recentpost (post,url) values(?,?)");
				ps.setString(1, post);
				ps.setString(2, url);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("<script>alert('Record Inserted Successfully');location='/itnotes/admin/recentpost.jsp';</script>");
				}
				//response.sendRedirect("admin/university.jsp");
			
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		
		
		if(request.getParameter("updatepassword")!=null)
		{
			String old=null;
			HttpSession session = request.getSession();
			if(session.getAttribute("user")!= null) 
			{
				String user = (String) session.getAttribute("user");
				String oldpass=request.getParameter("oldpassword");
				String pass=request.getParameter("newpassword");
				String conf=request.getParameter("confirmpassword");
				try {
					Statement stmt=con.createStatement();
					String query="select password from adminlogin where user='"+user+"'";
					ResultSet rs=stmt.executeQuery(query);
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
					PreparedStatement ps=con.prepareStatement("update adminlogin set password=? where user=?");
					ps.setString(1, pass);
					ps.setString(2, user);
					int i=ps.executeUpdate();
					if(i>0)
					{
						out.println("<script>alert('Password updated Successfully');location='/itnotes/admin/dashboard.jsp';</script>");
					}
					//response.sendRedirect("admin/university.jsp");
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				}
				
			} else {
				out.println("<script>alert('Oops...Sorry..You have enter a data wrong.........!!Try again.. :)');location='/itnotes/admin/dashboard.jsp';</script>");
			}
	}
	}
}