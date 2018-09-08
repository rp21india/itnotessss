<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<% 
		out.println("thanq you!!, Your session was destroyed successfully!!");
		 session = request.getSession(false);
		// session.setAttribute("user", null);
		session.removeAttribute("user");
		session.getMaxInactiveInterval();
		response.sendRedirect("index.jsp");
		%>
</body>
</html>