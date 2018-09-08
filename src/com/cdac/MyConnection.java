package com.cdac;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MyConnection 
{
	static Connection con;
	  public static Connection getConnection()
	  {
	    try
	    {            
	      if(con==null)
	      {
	        Class.forName("com.mysql.jdbc.Driver");  
	        String url = "jdbc:mysql://localhost:3307/itnotes?"+
	                "user=root&password=java";
	        con= DriverManager.getConnection(url);
	      }
	    }
	    catch (Exception ex)
	    {
	        ex.printStackTrace();
	    }        
	    return con;
	  }
	  
	  public static void CloseConnection()
	  {
	    try
	    {
	       con.close();
	       con = null;
	    }
	    catch (SQLException e)
	    {
	       e.printStackTrace();
	    } 
	  }
	  
	  public static ResultSet getResultFromSqlQuery(String SqlQueryString)
	  {
	     Statement stmt;
	     ResultSet rs = null;
	     try
	     {  
	        getConnection();
	        stmt = con.createStatement();
	        rs = stmt.executeQuery(SqlQueryString);
	     }
	     catch (SQLException e)
	     {
	        e.printStackTrace();
	     }       
	     return rs;
	  }

}
