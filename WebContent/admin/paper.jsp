<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.cdac.action.MethodImp"%>
<%@page import="com.cdac.MyConnection"%>
<%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="javascript/exter.js"></script>
<script type="text/javascript">
	function deleteSelected()
	{
		document.frmpaper.method="post";
		document.frmpaper.action="delMulPaper.jsp";
		document.frmpaper.submit();
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
               
                    <h1 class="page-header">Paper</h1>
                    <button class="btn btn-sm btn-primary pull-right" data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#myModalHorizontal">Add Paper</button>
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
                   Add previous year paper
                </h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                
                <form class="form-horizontal" enctype="multipart/form-data" action="uploadpaper.jsp" method="post">
                  <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="university">University</label>
                   <div class="col-md-10">
				<select name="university" id="university" class="form-control" onchange="fillcourse(this.value)">
					
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
                   <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="course" >Course</label>
                    <div class="col-md-10" id="fillcourse">
				<select name="ctype" id="ctype"  class="form-control" onchange="">
					<option value="">--Select Course--</option>  
				</select>
			</div>

                  </div>
                   <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="course" >Year/Sem</label>
                    <div class="col-md-10" id="fillyear">
				<select name="ctype" id="ctype"  class="form-control" onchange="">
					<option value="">--Select Year/Sem--</option>  
				</select>
			</div>

                  </div>
					 <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="course" >subject</label>
                    <div class="col-md-10" id="fillsubject">
				<select name="subject" id="subject"  class="form-control" onchange="">
					<option value="">--Select subject--</option>  
				</select>
			</div>

                  </div>
					
					                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="course" >Year</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="year"
                            id="year" placeholder="Enter Year"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="paper" >Paper</label>
                    <div class="col-sm-10">
                        <input type="file" class="form-control"
                            id="paper" name="paper" accept=".txt,
           application/pdf,
           application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,
           application/vnd.ms-excel,
           application/vnd.openxmlformats-officedocument.wordprocessingml.document,
           application/msword"/>
                    </div>
                  </div>
                 
   
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <input type="submit" class="btn btn-primary" name="addpaper" value="Add Paper"/>
                    </div>
                  </div>
                </form>
                 <%! int paperid;
					String filename,type,year,university,course,yearsem,subject;
                
					%>
                
                
                
                
                
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

            
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Previous Year Paper
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <form name="frmpaper">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th><input type="button" class ="btn-sm btn-primary btn-block" name="delete" value="delete select" onclick="deleteSelected();"></th>
                                        <th>Paper_id</th>
                                        <th>University</th>
                                        <th>Course</th>
                                        <th>YearSem</th>
                                        <th>Subject</th>
                                        <th>Paper</th>
                                        <th>Type</th>
                                        <th>Year</th>
                                        <th>Status</th>
                                        <th colspan="2">Action</th>
                                    </tr>
                                </thead>
                               <%
            try{
            Connection  con=MyConnection.getConnection();
            Statement stmt=con.createStatement();
            MethodImp mi =new MethodImp();
            ResultSet rs= mi.selectPaper(stmt);
            while(rs.next())
			{
				paperid=rs.getInt("paper_id");
				filename=rs.getString("filename");
				type=rs.getString("type");
				university=rs.getString("uname");
				course=rs.getString("course");
				yearsem=rs.getString("yearsem");
				subject=rs.getString("sname");
				year=rs.getString("year");
				%>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td><input type="checkbox" name="chkdeletepaperid" value="<%=rs.getInt("paper_id") %>"/></td>
                                        <td><%= paperid%></td>
                                        <td><%=university%></td>
                                        <td><%=course%></td>
                                        <td><%=yearsem%></td>
                                        <td><%=subject%></td>
                                        <td><%=filename %></td>
                                        <td><%= type%></td>
                                        <td><%=year %></td>
                                        
                                         <td><select name="status">
                                        <option value="0">Disable</option>
                                        <option value="1">Enable</option>
                                        </select></td>
                                        
                                       <td><a href="viewPaper.jsp?paperid=<%=paperid %>">view</a></td>
				<td><a href="/itnotes/deleteServlet?paperid=<%=paperid %>" onclick="if(confirm('Are you sure to delete this record')){return true;}else{return false;}">delete</a></td>
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
                            <!-- /.table-responsive -->
                                            </form>
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