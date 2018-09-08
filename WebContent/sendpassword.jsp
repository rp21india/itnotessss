<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.*" %>  
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.cdac.*" %>
<%
	String result=null;
	if(request.getParameter("send")!=null)
	{
		Connection con=(Connection) MyConnection.getConnection();
		final String username="itnotes61@gmail.com";
		final String password="adminitnotescdac";
		String pass="";
		String remail=request.getParameter("rmail");
		String subject="Reset Password";
		String mess="";
		String start="Your registered password at itnotes.com is  ";
		String email="";
		String query = "select email from register where email = '"+remail+"'";
		  ResultSet r = MyConnection.getResultFromSqlQuery(query);
		  try
		  {
			  while(r.next())
			  {
				  email=r.getString("email");  
			  }
		  }catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		  
		 if(email.equalsIgnoreCase(remail))
		 {
		try {
			Statement stmt=(Statement) con.createStatement();
			ResultSet rs= (ResultSet) stmt.executeQuery("select * from register where email='"+remail+"'");
			while(rs.next())
			{
				 
				 pass=rs.getString("password");
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mess=start.concat(pass);
	Properties props=new Properties();
	
	props.put("mail.smtp.host", "smtp.gmail.com"); //smtp.mail.yahoo.com
    	props.put("mail.smtp.auth", "true");
    	props.put("mail.debug", "true");
    	props.put("mail.smtp.port", "465"); //gmail port for TLS 587   and //yahoo port for SSL 465
    	props.put("mail.smtp.socketFactory.port", "465");
   	props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    	props.put("mail.smtp.socketFactory.fallback", "false");
    
		Session s=Session.getInstance(props,
			new Authenticator()
			{
				protected PasswordAuthentication getPasswordAuthentication()
				{
					return new PasswordAuthentication(username,password);
				}
			});
		try
		{
			Message message=new MimeMessage(s);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(remail));
			message.setSubject(subject);
			message.setText(mess);
			Transport.send(message);
					result="Your password has been successfully send to your registered email";
	}
	catch(MessagingException msg)
	{
		msg.printStackTrace();
		result="Error: Unable to Send Message...";
	}
		 }
		 else
		 {
			 result="<font color='red'>Entered email is not registed please enter correct email</font>";
		 }
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<h2>Your registered password at itnotes reset status <br> 
		</h2>
		</center>
			<p align='center'>
			<%
				out.print("Result:"+result+"&nbsp;&nbsp;&nbsp;&nbsp");
				out.print("<a href='login.jsp'>login</a>");
			%>
		</p>
</body>
</html>