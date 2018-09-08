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
<%! String[] ebook; %>
<center>You have selected: 
<% 
   ebook = request.getParameterValues("chkdeleteebookid");
   if (ebook != null) 
   {
      for (int i = 0; i < ebook.length; i++) 
      {
         System.out.println(ebook[i]);
      }
   }
   else out.println ("<b>none<b>");
   
   try
   {
   		Connection con=MyConnection.getConnection();
   		
	   for (int j = 0; j <ebook.length; j++) 
   {
		 PreparedStatement ps=con.prepareStatement("delete from ebook where ebook_id=?");
		 ps.setInt(1, Integer.parseInt(ebook[j]));
		int rec= ps.executeUpdate();
		 if(rec>0)
		 {%>
		 <h3><font color="blue">Ebook ID : <%= ebook[j]%> Deleted Successfully</font></h3>
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