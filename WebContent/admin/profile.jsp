<%@page import="com.cdac.action.MethodImp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<script src="javascript/exter.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome to IT Notes Admin panel</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<body>
<div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="dashboard.html"> Admin </a>
            </div>
            <!-- /.navbar-header -->
<div class="col-md-2 col-md-offset-11" >
			<a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
            </div>
			
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="dashboard.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="notes.jsp"><i class="fa fa-bar-chart-o fa-fw"></i>Notes</li></a>
                            <li>
                            <a href="syllabus.jsp"><i class="fa fa-table fa-fw"></i>Syllabus</a>
                        </li>
                        <li>
                            <a href="paper.jsp"><i class="fa fa-table fa-fw"></i>Papers</a>
                        </li>
                        <li>
                            <a href="ebook.jsp"><i class="fa fa-edit fa-fw"></i>Ebooks</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i>Materials<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="programs.jsp">Programs</a>
                                </li>
                                <li>
                                    <a href="project.jsp">Projects</a>
                                </li>
                                <li>
                                    <a href="ppt.jsp">PPT</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i>Add<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="university.jsp">University</a>
                                </li>
                                <li>
                                    <a href="course.jsp">Course</a>
                                </li>
                                <li>
                                    <a href="yearsem.jsp">Year/Sem</a>
                                </li>
                                <li>
                                    <a href="subject.jsp">Subject</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                          <li>
                            <a href="downloads.jsp"><i class="fa fa-table fa-fw"></i> Downloads</a>
                        </li>
                              <li>
                            <a href="feedback.jsp"><i class="fa fa-table fa-fw"></i> Feedbacks</a>
                        </li>
                        <li>
                            <a href="registereduser.jsp"><i class="fa fa-table fa-fw"></i>Registered User</a>
                        </li>
                         <li>
                            <a href="recentpost.jsp"><i class="fa fa-table fa-fw"></i>Recent Post</a>
                        </li>
                       
                            </ul>
                            <!-- /.nav-second-level -->
         
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>


		 
			
<%!
String adminname,email,pass;%>
                       
                        <%
                        try
                        {
                        Connection con= MyConnection.getConnection();
                        Statement stmt=con.createStatement();
                        session = request.getSession();
						String user = (String) session.getAttribute("user");
						MethodImp mi=new MethodImp();
						
						ResultSet rs=mi.adminprofile(stmt, user);
						if(rs.next())
						{
							adminname=rs.getString("adminname");
							email=rs.getString("user");
							pass=rs.getString("password");
							
						}
						
			%>
		
			<hr style="border:0;">
			<hr style="border:0;">
			<hr style="border:0;">
			<hr style="border:0;">
			<hr style="border:0;">
			            	<div class="col-md-6 col-md-offset-4">
                            <table align="center""100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                               
                                    <tr>
                                        <th>Admin Name</th>
                                         <td><%=adminname %></td>
                                         </tr>
							<tr>
                                        <th>Email</th>
                                         <td><%=email %></td>
                                       
                                </tr>
                                <tr>
                                        <th>Password</th>
                                        <td><%=pass %></td>
                                     
                                       </tr>
                               </table>
                        </div>
                        <%
                        }
                        catch(Exception e)
                        {
                        	e.printStackTrace();
                        }
                       %>   
                   

    
    




    <!-- Morris Charts JavaScript -->
    <script src="vendor/raphael/raphael.min.js"></script>
    <script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>


    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="vendor/raphael/raphael.min.js"></script>
    <script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>
</html>