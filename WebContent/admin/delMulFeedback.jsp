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
<%! String[] feedback; %>
<center>You have selected: 
<% 
   feedback = request.getParameterValues("chkdeletefeedbackid");
   if (feedback != null) 
   {
      for (int i = 0; i < feedback.length; i++) 
      {
         System.out.println(feedback[i]);
      }
   }
   else out.println ("<b>none<b>");
   
   try
   {
   		Connection con=MyConnection.getConnection();
   		
	   for (int j = 0; j <feedback.length; j++) 
   {
		 PreparedStatement ps=con.prepareStatement("delete from feedback where fid=?");
		 ps.setInt(1, Integer.parseInt(feedback[j]));
		int rec= ps.executeUpdate();
		 if(rec>0)
		 {%>
		 <h3><font color="blue">feedback ID : <%= feedback[j]%> Deleted Successfully</font></h3>
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