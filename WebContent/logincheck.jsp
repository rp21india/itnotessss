<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login check</title>
</head>
<body>
<%
String user="",pass="";

String un = request.getParameter("email");
String pwd = request.getParameter("password");
Connection con=(Connection) MyConnection.getConnection();
try {
	Statement stmt=(Statement) con.createStatement();
	ResultSet rs =(ResultSet) stmt.executeQuery("select * from register where email='"+un+"' and password='"+pwd+"'");
	while(rs.next())
	{
		 user=rs.getString("email");
		 pass=rs.getString("password");
		
	}
	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


if (un.equals(user)&& pwd.equals(pass)&&!un.equals("")&&!pwd.equals("")) {
	out.print("Welcome, " + un);
	 session = request.getSession(true); // reuse existing
													// session if exist
													// or create one
	session.setAttribute("uname", un);
	session.setMaxInactiveInterval(30); // 30 seconds
	//response.sendRedirect("indexlogin.jsp");
} else {
	//RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	out.println("<center><h5><font color=red>Either user name or password is wrong.</font></h1></center>");			//rd.include(request, response);
}
%>

</body>
</html>