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
    <th>University</th>
    <th>Course</th>
    <th>Syllabus</th>
    <th>Type</th>
    <th>Action</th>
  </tr>
<%
  String query = "select university.uname,course.course,syllabus.sid,syllabus.filename,syllabus.type from university join course on university.uid=course.uid join syllabus on course.cid=syllabus.cid where syllabus.cid="+request.getParameter("cid");
  ResultSet rs = MyConnection.getResultFromSqlQuery(query);
  int count =0;
  while(rs.next())
  {
    out.println("<tr>"
        + "<td>"+rs.getString("uname")+"</td>"
        + "<td>"+rs.getString("course")+"</td>"
        + "<td>"+rs.getString("filename")+"</td>"
        + "<td>"+rs.getString("type")+"</td>"
        + "<td>"
        +   "<a href='downloadsyllabus.jsp?sid="+rs.getInt("sid") +"'> Download </a>"
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