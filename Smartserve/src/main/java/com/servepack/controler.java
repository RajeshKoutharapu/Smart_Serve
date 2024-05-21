package com.servepack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/tomenu")
public class controler extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<menu> vegstaterslist=new ArrayList<>();
		List<menu> nonvegstaterslist=new ArrayList<>();
		List<menu> Vegmaincourselist=new ArrayList<>();
		List<menu> nonvegmaincourselist=new ArrayList<>();
	    DBcon obj=new DBcon();
		Connection con=obj.Connnection();
		vegstaterslist=Vegstaters.getstaters(con);
		Vegmaincourselist=Vegmaincourse.getvegmaincourse(con);
		nonvegstaterslist=Nonvegstaters.getnonvegststers(con);
		nonvegmaincourselist=Nonvegmaincourse.getnonvegmaincourse(con);
		request.setAttribute("vegstatersdata", vegstaterslist);
		request.setAttribute("vegmaincoursedata",Vegmaincourselist);
		request.setAttribute("nonvegstatersdata",nonvegstaterslist);
		request.setAttribute("nonvegmaincoursedata",nonvegmaincourselist);
		RequestDispatcher rd=request.getRequestDispatcher("menupage.jsp");
		rd.forward(request,response);
		
	}

	

}
