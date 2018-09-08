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
<%! String[] notes; %>
<center>You have selected: 
<% 
   notes = request.getParameterValues("chkdeletenid");
   if (notes != null) 
   {
      for (int i = 0; i < notes.length; i++) 
      {
         System.out.println(notes[i]);
      }
   }
   else out.println ("<b>none<b>");
   
   try
   {
   		Connection con=MyConnection.getConnection();
   		
	   for (int j = 0; j <notes.length; j++) 
   {
		 PreparedStatement ps=con.prepareStatement("delete from notes where notes_id=?");
		 ps.setInt(1, Integer.parseInt(notes[j]));
		int rec= ps.executeUpdate();
		 if(rec>0)
		 {%>
		 <h3><font color="blue">Notes ID : <%= notes[j]%> Deleted Successfully</font></h3>
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