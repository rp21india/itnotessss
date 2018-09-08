<%@page import="com.cdac.action.MethodImp"%>
<%@page import="com.cdac.MyConnection"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function deleteSelected()
	{
		document.frmfeedback.method="post";
		document.frmfeedback.action="delMulFeedback.jsp";
		document.frmfeedback.submit();
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
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
                            <a href="#"><i class="fa fa-wrench fa-fw"></i>Matrials<span class="fa arrow"></span></a>
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
                                    <a href="yearsem.jsp">YearSem</a>
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


		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
               
                    <h1 class="page-header">FeedBack</h1>
                    <button class="btn btn-sm btn-primary pull-right" data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#myModalHorizontal">Search</button>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            
               <!-- Modal -->
<div class="modal fade" id="myModalHorizontal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" 
                   data-dismiss="modal">
                       <span aria-hidden="true">&times;</span>
                       <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">
                   Search FeedBack
                </h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                
                <form class="form-horizontal"  action="../myservlet" method="post">
                  <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="user">Search</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                        id="user"  name="user" placeholder="Enter User Name Or Email"/>
                    </div>
                  </div>
                               
   
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <input type="submit" class="btn btn-primary" name="feedback" value="Search"/>
                    </div>
                  </div>
                </form>
                
                
                
                
                
                
            </div>
            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">
                            Close
                </button>
    
            </div>
        </div>
    </div>
</div>

            <%! int fid;
		String uname,email,mobile,cat,feedback;
	%>
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Total FeedBack
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <form name="frmfeedback">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th><input type="button" class ="btn-sm btn-primary btn-block" name="delete" value="delete select" onclick="deleteSelected();"></th>
                                        <th>fid</th>
                                        <th>User Name</th>
                                        
                                        <th>Email</th>
                                        <th>Mobile</th>
                                        <th>Category</th>
                                        <th>Feedback</th>
                                        <th>status</th>
                                        <th colspan="2">Action</th>
                                    </tr>
                                </thead>
                                <%
            try{
            Connection  con=MyConnection.getConnection();
            Statement stmt=con.createStatement();
            MethodImp mi =new MethodImp();
            ResultSet rs= mi.selectFeedback(stmt);
            while(rs.next())
			{
				fid=rs.getInt("fid");
				uname=rs.getString("username");
				email=rs.getString("email");
				mobile=rs.getString("mobile");
				cat=rs.getString("category");
				feedback=rs.getString("feedback");
				%>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td><input type="checkbox" name="chkdeletefeedbackid" value="<%=rs.getInt("fid") %>"/></td>
                                        <td><%=fid %></td>
                                        <td><%=uname %></td>
                                        <td><%=email %></td>
                                        <td><%=mobile %></td>
                                        <td><%=cat %></td>
                                        <td><%=feedback %></td>
                                        
                                         <td><select name="status">
                                        <option value="0">Disable</option>
                                        <option value="1">Enable</option>
                                        </select></td>
                                       
				<td><a href="/itnotes/deleteServlet?feedbackid=<%=fid %>" onclick="if(confirm('Are you sure to delete this record')){return true;}else{return false;}">delete</a></td>
                                    </tr>
                                   <% 
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
                                   
                                </tbody>
                            </table>
                            </form>
                            <!-- /.table-responsive -->
                                               </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
                
             
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    
    <!-- /#wrapper -->




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