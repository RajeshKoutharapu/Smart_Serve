package com.servepack;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBcon {
  public Connection Connnection() {
	  try {
	   String url="jdbc:mysql://localhost:3306/billbuddy-data";
	   String password="root";
	   String username="root";
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection(url,username,password);
	       return con;
	  }catch (Exception e){
		   System.out.println(e);
	  }
	  return null;
  }
  }
