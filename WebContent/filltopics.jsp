<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="form-group">
                   
                   <div class="col-md-12">
				<select name="topics" id="topics" class="form-control" onchange="fillprogram('<%=request.getParameter("techid")%>', this.value)">
					
				 <%
                   try
                   {
                   Connection con=(Connection)MyConnection.getConnection();
                            		  Statement stmt=con.createStatement();
                          			String query="select * from topics where techid="+request.getParameter("techid");
                          			ResultSet rs=stmt.executeQuery(query);        		  
                   %>
				
					<option value="-1">--Select topics--</option>  
					
					<%while(rs.next())
			{%>
			  <option value="<%=rs.getInt("tid")%>"><%=rs.getString("topics")%></option>
             <%           
			}
			
            }catch(Exception e)
                   {
            	e.printStackTrace();
                   }
			
			%>  
						</select>
			

                  </div>


</div>
</body>
</html>