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

</head>
<body>
<hr>



<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-xs-offset-4 ">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Sign in</h2>
                          <p>You can start your session.</p>
                            <div class="panel-body">
                              
                              <form class="form" action="/itnotes/UserServlet" method="post">
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                      
                                      <input id="uname"  name="uname" placeholder="Enter user name" class="form-control" type="email" required>
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>
                                      
                                      <input id="pass" name="pass" placeholder=" Enter Password" class="form-control" type="password" required>
                                    </div>
                                  </div>
                                  <div class="form-group">
                                   <div class="input-group">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember me&nbsp;&nbsp;<a href="forgotpassword.jsp">forgot password</a>
                                    </label>
                                </div>
                                </div>
   
                                  <div class="form-group">
                                    
                                    <input class="btn btn-lg btn-primary btn-block" name="login" id="login" value="Login" type="submit">
                                  </div>
                                 
                                </fieldset>
                              </form>
                            <p align="left">Not account yet<a href="signup.jsp"> click to register</a></p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
	 </div>
	 </div>
	 </div>             
           
</body>
</html>