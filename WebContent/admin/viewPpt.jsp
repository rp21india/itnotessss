<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String pptid = request.getParameter("pptid");     
  String query = "select filename, ppt from ppt where ppt_id = " + pptid;
  ResultSet rs = MyConnection.getResultFromSqlQuery(query);
  rs.next();
  
  // clear the response header information.
  response.reset();                        
  // check the file type and set the header contentType accordingly..   
  
  // add header information to response object
  response.addHeader("Content-Disposition","attachment; filename="+rs.getString(1));
  // create the byte array from Blob
  Blob blb = rs.getBlob(2);
  byte[] bdata = blb.getBytes(1, (int) blb.length());
  
  // get the response Output stream object to write the content of the file into header
  OutputStream output =  response.getOutputStream();
  output.write(bdata);
  output.close();
  // close the obejct of ResultSet
  rs.close();
  
  // close the connection object.. 
  MyConnection.CloseConnection(); 
%>
</body>
</html>