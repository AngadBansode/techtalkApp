package com.test.techtalks;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateController
 */
public class applyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Events events;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public applyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	System.out.println("applyController.doPost()");
	  response.setContentType("text/html");  
	    PrintWriter out1 = response.getWriter();  
	String n=request.getParameter("emailid");  
  out1.print("Welcome "+n);  

  Cookie ck=new Cookie("uname",n);//creating cookie object  
  response.addCookie(ck);//adding cookie in the response  
	
	try
	{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:MySql://localhost:3306/angad","root","manager");
		
	        String sql = "insert into registerEvent values (?,?,?)";
	        
	       
	         
	      java.sql.PreparedStatement statement = con.prepareStatement(sql);
	      statement.setInt(1, 1);
	      statement.setString(2, n);
	      statement.setString(3, request.getParameter("date"));
	       
	        int rowUpdated = statement.executeUpdate() ;
	        statement.close();
	        
	           System.out.println("rowUpdated = " + rowUpdated);
		 // return rowUpdated;  
      RequestDispatcher rd = request.getRequestDispatcher("TechEvents.jsp");
                  rd.forward(request, response);
	}
	catch(Exception e)
	{
		System.out.println("exception=" + e.getMessage());
	}
}
}
	
	
	
	