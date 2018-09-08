<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.2.0.js"></script>
<script src="javascript/exter.js"></script>
</head>
<body>
<%
if(session.getAttribute("uname")!=null)
{%>
	<div id="header">
	<div class="inner-wrap">
   
		<div id="header-text-nav-wrap" class="clearfix">
			<div id="header-left-section" class="col-md-12 col-xs-offset-1">
            					
										<div id="header-text" class="">
                							<h1 id="site-title">
							<a href="http://itnotes.com/" title="IT NOTES" rel="home">IT NOTES</a>
						</h1>
             	<p id="site-description" style="margin-top:-10px;">IT NOTES For All Universities In Rajasthan</p>
             <!-- #site-description -->
				</div><!-- #header-text -->
			</div><!-- #header-left-section -->
            </div>
            </div>
           


<div class="container">
<form>
<div class="row">
<div class="col-md-12">
<ul class="nav nav-tabs">
<li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>Home</a></li>
<li><a href="notes.jsp"><span class="glyphicon glyphicon-file"></span>Notes</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-list-alt"></span>Matarials
<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="programs.jsp">Programs</a></li>
<li><a href="ppt.jsp">PPT</a></li>
</ul>
</li>
<li><a href="ebooks.jsp"><span class="glyphicon glyphicon-book"></span>Ebooks</a></li>
<li><a href="paper.jsp"><span class="glyphicon glyphicon-paperclip"></span>Papers</a></li>
<li><a href="syllabus.jsp"><span class="glyphicon glyphicon-paperclip"></span>Syllabus</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-earphone"></span>Contact
 <span class="caret"></span>
</a>
 <ul class="dropdown-menu">
<li><a href="contactus.jsp">Contact</a></li>
<li><a href="feedback.jsp">Feedback</a></li>
</ul>
</li>
<li><a href="aboutus.jsp"><span class="glyphicon glyphicon-info-sign"></span>Aboutus</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Profile <span class="caret"></span>
</a>
  <ul class="dropdown-menu">
<li><a href="updateprofile.jsp">Update Profile</a></li>
<li><a href="changepassword.jsp">Change Password</a></li>
<li><a href="logout.jsp">Logout</a></li>
</ul>
</li>
</ul>
</div>
</div>
</form>
</div>
</div>	
<% }
else
{%>
	<div class="inner-wrap">
    
	<div id="header-text-nav-wrap" class="clearfix">
		<div id="header-left-section" class="col-md-12 col-xs-offset-1">
        					
									<div id="header-text" class="">
            							<h1 id="site-title">
						<a href="http://itnotes.com/" title="IT NOTES" rel="home">IT NOTES</a>
					</h1>
         	<p id="site-description" style="margin-top:-10px;">IT NOTES For All Universities In Rajasthan</p>
         <!-- #site-description -->
			</div><!-- #header-text -->
		</div><!-- #header-left-section -->
        </div>
        </div>
       


<div class="container">
<form>
<div class="row">
<div class="col-md-12">
<ul class="nav nav-tabs">
<li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span>Home</a></li>
<li><a href="notes.jsp"><span class="glyphicon glyphicon-file"></span>Notes</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-list-alt"></span>Matarials
<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="programs.jsp">Programs</a></li>
<li><a href="ppt.jsp">PPT</a></li>
</ul>
</li>
<li><a href="ebooks.jsp"><span class="glyphicon glyphicon-book"></span>Ebooks</a></li>
<li><a href="paper.jsp"><span class="glyphicon glyphicon-paperclip"></span>Papers</a></li>
<li><a href="syllabus.jsp"><span class="glyphicon glyphicon-paperclip"></span>Syllabus</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-earphone"></span>Contact
<span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="contactus.jsp">Contact</a></li>
<li><a href="feedback.jsp">Feedback</a></li>
</ul>
</li>
<li><a href="aboutus.jsp"><span class="glyphicon glyphicon-info-sign"></span>Aboutus</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Login <span class="caret"></span>
</a>
<ul class="dropdown-menu">
<li><a href="login.jsp">Login</a></li>
<li><a href="signup.jsp">Signup</a></li>
</ul>
</li>
</ul>
</div>
</div>
</form>
</div>

<% }
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
					 String query1 = "select * from recentpost" ;
					  ResultSet r = MyConnection.getResultFromSqlQuery(query1);%>
					  <% while(r.next())
					  {
						 %>
											<li style="border-bottom: 1px dashed #999999; padding: 10px 0px 10px 10px" class="pdficon2">
							<a href="<%=r.getString(3) %>" style="text-decoration: none; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 1.42857143; color: #333;" class="pdficon">
								 <%=r.getString(2) %>								<br /><span style="font-size: 8pt; color: #858585;"></span>
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
				Syllabus
			</h1>
		</div>
	</div>
	<div class="row" >
		<div style="padding: 10px; text-align: left;" class="col-md-12">
			<div class="col-md-3">University</div>
			<div class="col-md-6">
				<select name="university" id="university" class="form-control" onchange="fillcours(this.value)">
					
				 <%
                   try
                   {
                   Connection con=(Connection)MyConnection.getConnection();
                            		  Statement stmt=con.createStatement();
                          			String query="select * from university";
                          			ResultSet rs=stmt.executeQuery(query);        		  
                   %>
				
					<option value="-1">--Select University--</option>  
					
					<%while(rs.next())
			{%>
			  <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
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
		<div style="padding: 10px; text-align: left; background-color: #f0f0f0;" class="col-md-12">
			<div class="col-md-3">Course</div>
			<div class="col-md-6" id="fillcours">
				<select name="ctype" id="ctype"  class="form-control" onchange="">
					<option value="">--Select Course--</option>  
				</select>
			</div>
		</div>
					
            <div id='syllabussdiv' class="col-md-12" style="margin:30px; margin-left:5px;">  

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



<br><br>
<div class="container" style="background-image:url('css/images/footer_bg.jpg'); background-repeat: repeat; max-width:1170px; border: solid 1px #f0f0f0; padding-top: 10px; border-bottom: none; border-top: solid 4px #f6c957; margin-top: 5px;">
					<!-- 16:9 aspect ratio -->
					<div class="row" style="max-width: 1170px;">
						<div class="col-md-12  col-md-offset-1">
							<div class="col-md-2" style="text-align: left;">
								<div class="col-md-12" style="font-family: 'Oswald', sans-serif; font-size: 16px; margin-bottom: 10px;">
									<span class="glyphicon glyphicon-check" style="font-size: 15px; color: black;"></span>&nbsp;Visit @IT NOTES
                                    <img src="images/images2.jpg" alt="IT NOTES" class="img-responsive" width="200" height="200"/><br />
 								 	<h6 style="margin-top:-15px;">Design &amp; Dev. by Rahul <br />Banjara &amp; Parul Jain</h6>
								</div>
							
							</div>
							<div class="col-md-3" style="text-align: left;">
								<div class="col-md-12" style="font-family: 'Oswald', sans-serif; font-size: 16px; margin-bottom: 10px;"><span class="glyphicon glyphicon-check" style="font-size: 15px; color: black;"></span>&nbsp;Downloads
								</div>
								<ul class="footer_link" style="margin-top: 0px; text-align: left; list-style-type: none;">
									<li><a href="ebooks.jsp">Ebooks</a></li>
									<li><a href="paper.jsp">Papers</a></li>
									<li><a href="notes.jsp">Notes</a></li>
									<li><a href="syllabus.jsp">Syllabus</a></li>
									<li><a href="contactus.jsp">Contactus</a></li>
								
								</ul>
								
							</div>

							<div class="col-md-3" style="text-align: left;">
								<div class="col-md-12" style="font-family: 'Oswald', sans-serif; font-size: 16px; margin-bottom: 10px;"><span class="glyphicon glyphicon-check" style="font-size: 15px; color: black;"></span>&nbsp;Articles
								</div>
								<ul class="footer_link" style="margin-top: 0px; text-align: left; list-style-type: none;">
									<li><a href="index.html">Home</a></li>
									<li><a href="www.netcomedu.in">MCA Trainning</a></li>
									<li><a href="project.jsp">Project List</a></li>
									<li><a href="feedback.jsp">Feedback</a></li>
									<li><a href="aboutus.jsp">About us</a></li>
								
								</ul>
							</div>
							<div class="col-md-3" style="text-align: left;">
								<div class="col-md-12" style="font-family: 'Oswald', sans-serif; font-size: 16px; margin-bottom: 10px;">
									<span class="glyphicon glyphicon-check" style="font-size: 15px; color: black;"></span>&nbsp;Sharing and blog
								</div>
																<a href="https://www.facebook.com/itnotes" target="_blank" rel="nofollow"><img id="Img1" src="images/facebook.png" border="0"  alt="IT NOTES on Facebook"  class="img-responsive" width="50" height="50"/></a>
<a href="https://twitter.com/ITNOTES" target="_blank" rel="nofollow"><img id="Img2" src="images/twitter.png" border="0" alt="IT NOTES on Twitter" class="img-responsive" width="50" height="50"/></a>
<a href="http://www.youtube.com/user/ITNOTES" target="_blank" rel="nofollow"><img id="Img3" src="images/youtube.png" border="0" alt="IT NOTES on YouTube" class="img-responsive" width="50" height="50"/></a>

								
      
							</div>
						</div>
					</div>
				</div>
                <div class="copyright" align="center" class="col-md-12">Copyright &copy; 2017. All Rights Reserved</div>
</body>
</html>