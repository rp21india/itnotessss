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
				<select name="yearsem" id="yearsem" class="form-control" onchange="fillebooks('<%=request.getParameter("uid")%>','<%=request.getParameter("cid") %>', this.value)">
					
				 <%
				 
					
                   try
                   {
                	   int uid=Integer.parseInt(request.getParameter("uid"));
   					int cid=Integer.parseInt(request.getParameter("cid"));
                   Connection con=(Connection)MyConnection.getConnection();
                   PreparedStatement ps=con.prepareStatement("select * from yearsem where uid=? and cid=?");
      			 ps.setInt(1, uid);
      			 ps.setInt(2, cid);
      			ResultSet rs=ps.executeQuery();%>
      		
				
					<option value="-1">--Select Year/sem--</option>  
					
					<%while(rs.next())
			{%>
			  <option value="<%=rs.getInt("yid")%>"><%=rs.getString("yearsem")%></option>
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