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
    <th>PPT</th>
    <th>Action</th>
  </tr>
<%
  String query = "select ptechnology.ptechnology,ptopics.ptopics,ppt.ppt_id,ppt.filename from ptechnology join ptopics on ptechnology.ptech_id=ptopics.ptech_id join ppt on ptopics.ptid=ppt.ptid where ppt.ptid="+request.getParameter("ptid");
  ResultSet rs = MyConnection.getResultFromSqlQuery(query);
  int count =0;
  while(rs.next())
  {
    out.println("<tr>"
        + "<td>"+rs.getString("ptechnology")+"</td>"
        + "<td>"+rs.getString("ptopics")+"</td>"
        + "<td>"+rs.getString("filename")+"</td>"
        + "<td>"
        +   "<a href='downloadppt.jsp?pid="+rs.getInt("ppt_id") +"'> Download </a>"
        + "</td>"
        + "</tr>");
    count++;
  }
  rs.close();
  MyConnection.CloseConnection();
  if(count==0)
  {
    out.println("<tr><td colspan='4'> No File Found..!! </td></tr>");
  }
%>            
</table>
</center>
</body>
</html>