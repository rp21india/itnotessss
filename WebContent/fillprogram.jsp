<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Download File from Database</title>
<style type="text/css">
	table, tr, th, td
	{
		border:1px solid black;
		border-collapse: collapse;
		text-align: center;
		font-size:15px;
		color:black;
	}
	a
	{
		color:black;
		text-decoration:none;
	}
</style>
</head>
<body>
<center>
<table border="0" cellpadding="25" cellspacing="25" >
  
  <tr>
    <th>Technology</th>
    <th>Topics</th>
    <th>Program</th>
   
  </tr>
<%
  String query = "select technology.technology,topics.topics,program.pid,program.program from technology join topics on technology.techid=topics.techid join program on topics.tid=program.tid where program.tid="+request.getParameter("topic");
  ResultSet rs = MyConnection.getResultFromSqlQuery(query);
  int count =0;
  while(rs.next())
  {
    out.println("<tr>"
        + "<td>"+rs.getString("technology")+"</td>"
        + "<td>"+rs.getString("topics")+"</td>"
        + "<td>"+rs.getString("program")+"</td>"
        + "</td>"
        + "</tr>");
    count++;
  }
  rs.close();
  MyConnection.CloseConnection();
  if(count==0)
  {
    out.println("<tr><td colspan='4'> No Records Found..!! </td></tr>");
  }
%>            
</table>
</center>
</body>
</html>