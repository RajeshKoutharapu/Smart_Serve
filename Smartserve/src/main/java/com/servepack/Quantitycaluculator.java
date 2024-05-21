package com.servepack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/total")
public class Quantitycaluculator extends HttpServlet {	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	List<Item> quantitylist=new ArrayList<>();
	for(int i=0;i<10;i++) {
		 String quantitycheck = "vegstquantity" + i;
	        String quantityvalue = request.getParameter(quantitycheck);
	        if (quantityvalue != null && !quantityvalue.isEmpty()) {
	        	 Item item=new Item();
	        	 item.setName(request.getParameter("vegstitemname" + i));
	             item.setPrice(Integer.parseInt(request.getParameter("vegstprice" + i)));
	              item.setQuantity(Integer.parseInt(quantityvalue));
	              quantitylist.add(item);       
	       }
	}
	for(int i=0;i<10;i++) {
		 String quantitycheck = "Vegmaincoursequantity" + i;
	        String quantityvalue = request.getParameter(quantitycheck);
	        if (quantityvalue != null && !quantityvalue.isEmpty()) {
	        	 Item item=new Item();
	        	 item.setName(request.getParameter("Vegmaincourseitemname" + i));
	             item.setPrice(Integer.parseInt(request.getParameter("Vegmaincourseprice" + i)));
	              item.setQuantity(Integer.parseInt(quantityvalue));
	              quantitylist.add(item);       
	       }
	}
	
	for(int i=0;i<10;i++) {
		 String quantitycheck = "nonvegstquantity" + i;
	        String quantityvalue = request.getParameter(quantitycheck);
	        if (quantityvalue != null && !quantityvalue.isEmpty()) {
	        	 Item item=new Item();
	        	 item.setName(request.getParameter("nonvegstitemname" + i));
	             item.setPrice(Integer.parseInt(request.getParameter("nonvegstprice" + i)));
	              item.setQuantity(Integer.parseInt(quantityvalue));
	              quantitylist.add(item);       
	       }
	}
	for(int i=0;i<10;i++) {
		 String quantitycheck = "nonvegmaincoursequantity" + i;
	        String quantityvalue = request.getParameter(quantitycheck);
	        if (quantityvalue != null && !quantityvalue.isEmpty()) {
	        	 Item item=new Item();
	        	 item.setName(request.getParameter("nonvegmaincourseitemname" + i));
	             item.setPrice(Integer.parseInt(request.getParameter("nonvegmaincourseprice" + i)));
	              item.setQuantity(Integer.parseInt(quantityvalue));
	              quantitylist.add(item);       
	       }
	}
	
	
	
int totalcost=0;
	PrintWriter out=response.getWriter();
	for(Item n:quantitylist) {
		//out.println(n.getName()+" "+n.getPrice()+"   "+n.getQuantity());
		
		totalcost+=n.getPrice()*n.getQuantity();
		}
	//out.println("total :"+totalcost);
	request.setAttribute("orderslist",quantitylist);
	request.setAttribute("totalcost",totalcost);
	RequestDispatcher rd=request.getRequestDispatcher("Billpage.jsp");
	rd.forward(request, response);
	
}


}
