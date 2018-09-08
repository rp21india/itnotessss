<%@page import="com.cdac.MyConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<%! String[] syllabus; %>
<center>You have selected: 
<% 
   syllabus = request.getParameterValues("chkdeletesid");
   if (syllabus != null) 
   {
      for (int i = 0; i < syllabus.length; i++) 
      {
         System.out.println(syllabus[i]);
      }
   }
   else out.println ("<b>none<b>");
   
   try
   {
   		Connection con=MyConnection.getConnection();
   		
	   for (int j = 0; j <syllabus.length; j++) 
   {
		 PreparedStatement ps=con.prepareStatement("delete from syllabus where sid=?");
		 ps.setInt(1, Integer.parseInt(syllabus[j]));
		int rec= ps.executeUpdate();
		 if(rec>0)
		 {%>
		 <h3><font color="blue">syllabus ID : <%= syllabus[j]%> Deleted Successfully</font></h3>
		 <% 
		 }
   }
   }catch(Exception e)
   {
	   e.printStackTrace();
   }
%>
</center>
</html>