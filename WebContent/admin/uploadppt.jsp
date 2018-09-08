<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*, java.sql.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.cdac.MyConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ppt for latest trends</title>
</head>
<body>
	<%
	
	String rtempfile = File.createTempFile("temp","1").getParent(); 

// get the file from the previous page form           
// save the file in temporary directory of server
// specify the max size = 15MB
MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);
int tech=Integer.parseInt(multi.getParameter("technology"));
int topics=Integer.parseInt(multi.getParameter("topics"));
System.out.println("Technology="+tech+" topics="+topics);
Enumeration files = multi.getFileNames();

String st="insert into ppt(ptech_id, ptid,filename,ppt, type) values (?,?,?,?,?)";

// get the connection object from another class MyConnection's method getConnection();
// and create the prepareStatement
PreparedStatement psmt=MyConnection.getConnection().prepareStatement(st);

         
String name="";
String fileExtesion="";
File ff =null;
FileInputStream fin =null;

while (files.hasMoreElements())
{
   name=(String)files.nextElement();         
  
   ff = multi.getFile(name);
   fileExtesion = ff.getName().substring(ff.getName().lastIndexOf("."));
   
   // check user has select the correct file or not
   boolean fileAllowed = fileExtesion.equalsIgnoreCase(".pdf")||
                         fileExtesion.equalsIgnoreCase(".doc")||
                         fileExtesion.equalsIgnoreCase(".docx")||
                         fileExtesion.equalsIgnoreCase(".ppt")||
                         fileExtesion.equalsIgnoreCase(".pptx");
   
   if((ff!=null)&&fileAllowed)
   {
     
     try
     {
       fin=new FileInputStream(ff);
       psmt.setInt(1,tech);
       psmt.setInt(2, topics);
       psmt.setString(3, ff.getName());
       psmt.setBinaryStream(4,(InputStream)fin, (int)(ff.length()));
       psmt.setString(5, fileExtesion);        // pass the user name or id 
       boolean sss = psmt.execute();
       
       out.print("uploaded successfully..");
       response.sendRedirect("ppt.jsp");
     }
     
     catch(Exception e)
     {
       out.print("Failed due to " + e);
     }
     
     finally
     {
      // next statement is must otherwise file will not be deleted from the temp as fin using f.
      // its necessary to put outside otherwise at the time of exception file will not be closed.
           fin.close();
           ff.delete();
     }
   }
   else
   {
         out.print("Please select the correct file...");
   }// end of if and else
}// end of while

MyConnection.CloseConnection();
	// close the connection
	
%>
</body>
</html>