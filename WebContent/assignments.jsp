<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.cdac.action.MethodImp"%>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="bootstrap/js/jslogin.js" type="text/javascript"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.2.0.js"></script>

</head>
<body>
<%! String post,url;

%>
<div class="col-md-2 col-xs-offset-1" style="background-repeat: repeat; text-align: left; border: solid 1px #aaa; padding: 10px; font-family: 'Oswald', sans-serif; font-size: 16px;">
			<span class="glyphicon glyphicon-th-list" style="font-size: 16px; color: black;"></span>&nbsp;
			<a href="#" style="text-decoration: none;color: black;">
				 Recent Posts
			</a>
		
			<div class="row">
				<marquee direction="up" height="140" width="100%" scrollDelay='5' scrollamount='2' onmouseover='stop();' onmouseout='start();'>
					<ul style="list-style-type: none; padding-left: 0px;">
					<%
					 String query = "select * from recentpost" ;
					  ResultSet rs = MyConnection.getResultFromSqlQuery(query);%>
					  <% while(rs.next())
					  {
						 %>
											<li style="border-bottom: 1px dashed #999999; padding: 10px 0px 10px 10px" class="pdficon2">
							<a href="<%=rs.getString(3) %>" style="text-decoration: none; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 1.42857143; color: #333;" class="pdficon">
								 <%=rs.getString(2) %>								<br /><span style="font-size: 8pt; color: #858585;"></span>
							</a>

						</li> <%} %>
 </ul>
				
											
											   
				</marquee>
			</div>
		</div>
	



 
<div class="col-md-5">
				<div class="row">
		<div class="col-md-12" style="background-color: #EBEBEB; border-bottom : solid 4px #A3A3A3; margin: 0px 0px 10px 0px;">
			<h1 align="left" style="font-family: Oswald; font-size: 24px; color: #1e80a4; margin: 0px; padding: 10px 0px 10px 5px;">
				Assignment Programs List
			</h1>
		</div>
	</div>
	<div class="row" >
		<div style="padding: 10px; text-align: left;" class="col-md-12">
			<div class="col-md-3">Subject</div>
			<div class="col-md-6">
				<select name="subject" id="subject" class="form-control" onchange="">
					<option value=""></option>  
						</select>
			</div>
		</div>
		
					
            <div id='programsdiv' class="col-md-12">  

		</div>
	</div>

			</div>



<div class="col-md-3"><br />
<a href="http://www.ciitm.org/index/" target="_blank"> 	<img src="images/add/compucom.jpg" class="img-responsive" height="400" width="400"  style="border-radius:10px; border-color: #D0F6FE;" /></a>
		<div class="vctext" style="margin:5px">
			<p align="center"><b>A Leading College In Jaipur</b><br /></p>
	<a href="http://www.indeed.com" target="_blank"> 	<img src="images/add/indeed.jpg" class="img-responsive" height="400" width="400"  style="border-radius:10px; border-color: #D0F6FE;" /></a>
		<div class="vctext" style="margin:5px">
			<p align="center"><b>Search Job Accroding to Your Profile</b><br /></p>
				
		</div><br>
        
        <a href="http://www.netcomedu.in/" target="_blank"><img src="images/images3.jpg" class="img-responsive" style="border-radius:10px; border-color: #D0F6FE;" /></a>
		<div class="vctext" style="margin:5px">
			<b>MCA Trainning in Rajasthan</b><br />
			
		</div>
        
		<h3 class="widget-title"><span>Popular Articles</span></h3>
	<ul class='xoxo blogroll'>
<li><a href="" rel="me" title="Download Free FY SY TY Bca Notes,Tutorials and Programs " target="_blank">BCA NOTES</a></li>
<li><a href="" rel="me" title="Syllabus" target="_blank"> University Syllabus</a></li>
<li><a href="" rel="me" title="MCA Trainning in jaipur" target="_blank">MCA Project Trainning in Jaipur</a></li>
<li><a href="" rel="me" title=" " target="_blank">MCA NOTES</a></li>
<li><a href="" title="MCA Project Topic List " target="_blank">MCA Project Topic List</a></li>
<li><a href="Ebooks" rel="me" title="ebooks free downloads" target="_blank">Ebooks Free Downloads</a></li>

	</ul>

	</div>
</div>                   

</body>
</html>