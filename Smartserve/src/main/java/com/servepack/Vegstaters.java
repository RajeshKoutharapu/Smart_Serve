package com.servepack;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Vegstaters {
	static List<menu> getstaters(Connection con) {
		List<menu> items=new ArrayList<menu>();
		try {
			 java.sql.Statement smt=con.createStatement();
			   ResultSet rs=smt.executeQuery("select * from veg_staters");
			   while(rs.next()) {
				   String item=rs.getString(2);
				   int price=rs.getInt(3);
				   String quantity=rs.getString(4);
				   menu res=new menu(item,price,quantity);
				   items.add(res);
			   }
			return items;
		} catch (Exception e) {
		
		}
		 
		return items;
	}

}
