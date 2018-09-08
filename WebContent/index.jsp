<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.cdac.action.MethodImp"%>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page import="com.cdac.MyConnection" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="bootstrap/js/jslogin.js" type="text/javascript"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.2.0.js"></script>
<script src="javascript/exter.js"></script>
<title>IT Notes</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.2.0.js"></script>

<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />
 
	<link href="css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	
	<script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="javascript/login-register.js" type="text/javascript"></script>



</script>
 <style>
 .carousel-inner > .item > img,
 .carousel-inner > .item > a > img {
     display: block;
     max-width: 100%;
     height: 300px !important;
 }
 </style>
</head>
<body>

<div class="inner-wrap">
           
				<div id="header-text-nav-wrap" class="clearfix">
					<div id="header-left-section" class="col-md-4 col-xs-offset-1">
                    					
												<div id="header-text" class="">
                        							<h1 id="site-title">
   								<a href="http://itnotes.com/" title="IT NOTES" rel="home">IT NOTES</a>
   							</h1><div>
                         
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
        <li><a data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Login</a></li>
        <li><a data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">Signup</a></li>
        </ul>
        </li>
        </ul>
        </div>
        </div>
        </form>
        </div>
        <div class="col-md-2 col-md-offset-1" style="background-repeat: repeat; text-align: left; border: solid 1px #aaa; padding: 10px; font-family: 'Oswald', sans-serif; font-size: 16px;">
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
	</div>


        <div class="col-md-5">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
     <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/slider1.jpg" alt="ebooks" class="img-responsive">
    </div>

    <div class="item">
      <img src="images/slider2.jpg" alt="Chania" class="img-responsive">
    </div>

    <div class="item">
      <img src="images/slider3.jpg" alt="Flower" class="img-responsive">
    </div>

    <div class="item">
      <img src="images/slider4.jpg" alt="Flower" class="img-responsive">
    </div>
      <div class="item">
      <img src="images/slider5.jpg" alt="Flower" class="img-responsive">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   </div>
   
   <div class="col-md-3"><br />
	<a href="http://www.ciitm.org/index/" target="_blank"> 	<img src="images/add/compucom.jpg" class="img-responsive" height="400" width="400"  style="border-radius:10px; border-color: #D0F6FE;" /></a>
		<div class="vctext" style="margin:5px">
			<p align="center"><b>A Leading College In Jaipur</b><br /></p>
				
		</div></br>
		<a href="http://www.netcomedu.in/" target="_blank"><img src="images/images3.jpg" class="img-responsive" style="border-radius:10px; border-color: #D0F6FE;" />
		<div class="vctext" style="margin:5px">
			<b>MCA Trainning in Rajasthan</b><br />
			
		</div>
	</div>
</div>                                
<!--<div class="col-md-7" col-md-offset-2><br />
	<b>Top Colleges in</b><br />
    <h4>Rajasthan</h4>
	<marquee behavior="scroll" direction="left">
<img src="images/marquee/logo1.jpg" width="100" height="100" alt="compucom">
</marquee>
		</div></br>-->
    

<div class="container">
        <div class="row">
            <div style="padding-top: 20px; margin-top: -10px; border: 1px none gray;">
                <label class="col-md-2" style="font-size: x-large; vertical-align: top;);
                    height: 80px; background-size: 100%; padding: 1.5% 0 0 1%; 
                    text-align: center;">
                    Top collegs in<br />
                    <h4>Rajasthan</h4>
                </label>
                <div class="marquee"  class="col-md-6"style="width:70%; height:">

                   <marquee onmouseover='stop();' onmouseout='start();'>
                  <a href="http://www.ciitm.org" target="_blank">  <img src="images/marquee/logo1.jpg" /></a>
                   <a href="http://www.gitjaipur.com" target="_blank"><img src="images/marquee/logo2.jpg" /></a>
                  <a href="http://www.aryabhattaajmer.in" target="_blank"> <img src="images/marquee/logo3.jpg" /></a>
                  <a href="http://www.modiuniversity.ac.in" target="_blank"> <img src="images/marquee/logo4.jpg" /></a>
                   <a href="http://www.apexcollege.in" target="_blank"><img src="images/marquee/logo5.jpg" /></a>
                  <a href="http://www.jecrcfoundation.com" target="_blank"> <img src="images/marquee/logo6.jpg" /></a>
                  <a href="http://www.uniraj.ac.in" target="_blank"> <img src="images/marquee/logo7.jpg" /></a>
                   <a href="http://www.poornima.edu.in" target="_blank"><img src="images/marquee/logo8.jpg" /></a>
                   <a href="http://www.jietjodhpur.ac.in" target="_blank"><img src="images/marquee/logo9.jpg" />
                  <a href="http://www.mbm.ac.in" target="_blank"> <img src="images/marquee/logo10.jpg" />              
                    </div>

				</marquee>
              </div>
        </div>

		



<div class="col-md-6 col-md-offset-2" style="text-align: justify; padding-top: 10px;">
		<h4>Welcome to IT NOTES </h4>
		<img src="images/main.jpg" class="img-responsive" align="right" style="border-radius:10px; border-color: #D0F6FE; margin: 0px 10px;">
		IT NOTES(notes for all universities) Blog provide NOTES , Projects Titles,Programs ,Tutorials, ppt , Bca Guidelines ,  Syllabus , Ebooks  ,MCA Project Trainning. This blog is also helpful to other  MCA and IT  students to learn online and downloads notes ebooks for read any time  and any where .
  <br /><br />
		 This blog offers more programs of learning including matarials, 7 References ebooks , well structured notes for all IT students , ppt on latest trends, MCA Last sem trainning and collegs list in rajasthan in IT Stream.

	</div>
	<br />
    
    
    
    
    


<div class="col-md-3"><br />
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
<li><a href="notes.jsp" rel="me" title="Download Free Bca Notes,Tutorials and Programs " target="_blank">BCA NOTES</a></li>
<li><a href="syllabus.jsp" rel="me" title="Syllabus" target="_blank"> University Syllabus</a></li>
<li><a href="http://www.netcomedu.in" target="blank" rel="me" title="MCA Trainning in jaipur" target="_blank">MCA Project Trainning in Jaipur</a></li>
<li><a href="notes.jsp" rel="me" title=" " target="_blank">MCA NOTES</a></li>
<li><a href="" title="MCA Project Topic List " target="_blank">MCA Project Topic List</a></li>
<li><a href="ebooks.jsp" rel="me" title="Ebooks free downloads" target="_blank">Ebooks Free Downloads</a></li>

	</ul>

	</div>
</div>                   




   <div class="container" style="background-image:url('css/images/footer_bg.jpg'); background-repeat: repeat; max-width:1170px; border: solid 1px #f0f0f0; padding-top: 10px; border-bottom: none; border-top: solid 4px #f6c957; margin-top: 5px;">
					<!-- 16:9 aspect ratio -->
					<div class="row" style="max-width: 1170px;">
						<div class="col-md-12  col-md-offset-1">
							<div class="col-md-2" style="text-align: left;">
								<div class="col-md-12" style="font-family: 'Oswald', sans-serif; font-size: 16px; margin-bottom: 5px;">
									<span class="glyphicon glyphicon-check" style="font-size: 15px; color: black;"></span>&nbsp;Visit @IT NOTES
                                    <img src="images/images2.jpg" alt="IT NOTES" class="img-responsive" width="200" height="200" /><br />
 								 		<h6 style="margin-top:-15px;">Design &amp; Dev. by Ram <br />Parjapat &amp; Rahul Banjara</h6>
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
									<li><a href="http://www.netcomedu.in">MCA Trainning</a></li>
									<li><a href="project.jsp">Project List</a></li>
									<li><a href="feedback.jsp">Feedback</a></li>
									<li><a href="aboutus.jsp">About us</a></li>
								
								</ul>
							</div>
							<div class="col-md-3" style="text-align: left;">
								<div class="col-md-12" style="font-family: 'Oswald', sans-serif; font-size: 16px; margin-bottom: 10px;">
									<span class="glyphicon glyphicon-check" style="font-size: 15px; color: black;"></span>&nbsp;Sharing and blog
								</div>
																<a href="https://www.facebook.com/itnotes.com" target="_blank" rel="nofollow"><img id="Img1" src="images/facebook.png" border="0"  alt="IT NOTES on Facebook"  class="img-responsive" width="50" height="50"/></a>
<a href="https://twitter.com/ITNOTES" target="_blank" rel="nofollow"><img id="Img2" src="images/twitter.png" border="0" alt="IT NOTES on Twitter" class="img-responsive" width="50" height="50"/></a>
<a href="http://www.youtube.com/user/ITNOTES" target="_blank" rel="nofollow"><img id="Img3" src="images/youtube.png" border="0" alt="IT NOTES on YouTube" class="img-responsive" width="50" height="50"/></a>

								
      
							</div>
						</div>
					</div>
				</div>
                <div class="copyright" align="center" class="col-md-12">Copyright &copy; 2017. All Rights Reserved</div>










<div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Login with</h4>
                    </div>
                    <div class="modal-body">  
                        <div class="box">
                             <div class="content">
                                <div class="social">
                                    <a class="circle github" href="">
                                        <i class="fa fa-github fa-fw"></i>
                                    </a>
                                    <a id="google_login" class="circle google" href="">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a>
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>or</span>
                                    <div class="line r"></div>
                                </div>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <form method="post" action="/itnotes/UserServlet" accept-charset="UTF-8">
                                    <div id="loginerror"></div>
                                    <input id="email" name="uname" class="form-control" type="text" placeholder="Email" name="email" required>
                                    <input id="password" name="pass" class="form-control" type="password" placeholder="Password" name="password" required>
                                    <input class="btn btn-default btn-login" name="login" type="button" value="Login" onclick="logincheck(email,password)">
                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form registerBox">
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="/register" accept-charset="UTF-8">
                                <input id="username" class="form-control" type="text" placeholder="User Name" name="uname" required>
                                <input id="email" class="form-control" type="text" placeholder="Email" name="email" required>
                                <input id="password" class="form-control" type="password" placeholder="Password" name="password" required>
                                <input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation" required>
                                <input class="btn btn-default btn-register" type="submit" value="Create account" name="commit">
                                </form>
                                </div>
                            </div>
                        </div>
                    
                    <div class="box">
                            <div class="content forgotpasswordBox" style="display:none;">
                             <div class="form forgotpasswordBox">
                                <form method="post" html="{:multipart=>true}" data-remote="true" action="/register" accept-charset="UTF-8">
                                <input id="email" class="form-control" type="text" placeholder="Email" name="rmail" required>
                                 <input style="background-color: #00BBFF;
    border-color: #00BBFF;
    border-width: 0;
    color: #FFFFFF;
    display: block;
    margin: 0 auto;
    padding: 15px 50px;
    text-transform: uppercase;
    width: 100%;" id="btnforgot" class="btn btn-default btn-forgotpassword" type="submit"  name="send" value="Send My Password">
                                </form>
                                </div>
                            </div>
                        </div>
                    
                    
                    
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Looking to 
                            <a href="javascript:openForgotpasswordModel();">forgotpassword</a>
                                 <a href="javascript:showRegisterForm();">create an account</a>
                            </span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>Already have an account?</span>
                             <a href="javascript: showLoginForm();">Login</a>
                             
                        </div>
                       <div class="forgot forgotpassword-footer" style="display:none">
                             <span>Not account yet?</span>
                             <a href="javascript: showRegister();">create an account</a>
                             
                        </div>
                       
                    </div>        
    		      </div>
		      </div>
		  </div>
   </div>


									
                    




</body>
</html>