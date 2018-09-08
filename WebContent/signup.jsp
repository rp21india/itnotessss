<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<div class="container">
<div class="col-md-6 col-md-offset-3"> 
                    
        <div class="row">
           <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Register</h2>
                          
                            <div class="panel-body">
                 
               
                    <form action="/itnotes/UserServlet" method="post" name="form" onsubmit="">
                         <fieldset>
                        <div style="float: left ; width: 100%;">
                            <div style="text-align: left;" class="col-md-12">
                                <div class="form-group">
                                    <label for="name">Full Name</label>
                                    <input type="text" name="name" id="name" required class="form-control" placeholder="Enter Full Name" />
                                </div>
                                <div class="form-group">
                                    <label for="email">E-Mail </label>
                                    <input type="email" name="email" id="email" required class="form-control" placeholder="Enter Email">
                                </div>
                                        
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" id="password" required class="form-control" placeholder="Enter Password">

                                </div>
                               
                               <div class="form-group">
                                    <label for="cpassword">Conform Password</label>
                                    <input type="password" name="cpassword" id="cpassword" required class="form-control" placeholder="Enter Conform Password">

                                </div>
                                <div class="form-group">
                                    <input type="submit" name="register" value="Register" class="btn btn-lg btn-primary"style=" margin-right: 20px;" />
                                    <input type="reset" value="Reset"class="btn btn-lg btn-primary" style=" margin-right: 20px;" />
                                </div>
                               
                            </div> 
                        </div>
                        </fieldset>
                    </form>
                     
                </div>
            </div>
        </div>
    </div>
                     </div>
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