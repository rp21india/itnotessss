package com.cdac.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdac.MyConnection;
import com.cdac.action.MethodImp;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class deleteServlet
 */
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteServlet() {
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
		PrintWriter out=response.getWriter();
			Connection con=(Connection) MyConnection.getConnection();
			
			
		  Enumeration e = request.getParameterNames();
		  
		    while(e.hasMoreElements())
		    {
		      Object obj = e.nextElement();
		      String fieldName = (String) obj;
		      String fieldValue = request.getParameter(fieldName);
		      if(fieldName.equals("notesid"))
		      {
		    	  
		      try {
					Statement stmt=(Statement) con.createStatement();
					MethodImp mi=new MethodImp();
					int i=mi.deleteNotes(stmt,Integer.parseInt(fieldValue));
					if(i>0)
					{
						out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/notes.jsp';</script>");
						
					}
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		      }
		      else if(fieldName.equals("syllabusid"))
		      {  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteSyllabus(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/syllabus.jsp';</script>");
								}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		      }
		      
		      else if(fieldName.equals("paperid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deletePaper(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/paper.jsp';</script>");
								}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }
		      
		      else if(fieldName.equals("ebookid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteEbook(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/ebook.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }    

		      else if(fieldName.equals("programid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteProgram(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/program.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }        
		
		      
		      else if(fieldName.equals("pptid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deletePpt(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/ppt.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    } 
		      
		      else if(fieldName.equals("universityid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteUniversity(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/university.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }
		      else if(fieldName.equals("courseid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteCourse(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/course.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }
		      else if(fieldName.equals("yearsemid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteYearsem(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/yearsem.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }
		      
		      else if(fieldName.equals("subjectid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteSubject(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/subject.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }
		      else if(fieldName.equals("feedbackid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteFeedback(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/feedback.jsp';</script>");
							}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }
		      else if(fieldName.equals("userid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deleteUser(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/registereduser.jsp';</script>");
									}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    }
		      else if(fieldName.equals("postid"))
		      {
		    	  
			      try {
						Statement stmt=(Statement) con.createStatement();
						MethodImp mi=new MethodImp();
						int i=mi.deletePost(stmt,Integer.parseInt(fieldValue));
						if(i>0)
						{
							out.println("<script>alert('Record Deleted Successfully');location='/itnotes/admin/recentpost.jsp';</script>");
									}
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
		    } 
		      
	}

	}
}	
