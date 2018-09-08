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
				<select name="subject" id="subject" class="form-control" onchange="fillpaper('<%=request.getParameter("uid")%>','<%=request.getParameter("cid") %>','<%=request.getParameter("yid") %>', this.value)">
					
				 <%
				 
					
                   try
                   {
                	   int uid=Integer.parseInt(request.getParameter("uid"));
   					int cid=Integer.parseInt(request.getParameter("cid"));
   					int yid=Integer.parseInt(request.getParameter("yid"));
   					
                   Connection con=(Connection)MyConnection.getConnection();
                   PreparedStatement ps=con.prepareStatement("select * from subject where uid=? and cid=? and yid=?");
      			 ps.setInt(1, uid);
      			 ps.setInt(2, cid);
      			 ps.setInt(3,yid);
      			ResultSet rs=ps.executeQuery();%>
      		
				
					<option value="-1">--Select subject--</option>  
					
					<%while(rs.next())
			{%>
			  <option value="<%=rs.getInt("sid")%>"><%=rs.getString("sname")%></option>
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