package com.test.techtalks;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  response.setContentType("text/html");  
		    PrintWriter out1 = response.getWriter();  
		String n=request.getParameter("emailid");  
	    out1.print("Welcome "+n);  
	  
	    Cookie ck=new Cookie("uname",n);//creating cookie object  
	    response.addCookie(ck);//adding cookie in the response  
	  	
	  
		
		if(request.getParameter("emailid").equals("angad@at.com") && request.getParameter("password").equals("4321") )
		{
			RequestDispatcher rd=request.getRequestDispatcher("AdminTechEvents.jsp");
			rd.forward(request, response);
		}
		else
		{
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:MySql://localhost:3306/angad","root","manager");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from userTable where email='"+request.getParameter("emailid")+"' && password='"+request.getParameter("password")+"'");
				if(rs.next())
				{
					RequestDispatcher rd=request.getRequestDispatcher("TechEvents.jsp");
					rd.forward(request, response);
				}
				else
				{
					PrintWriter out=response.getWriter();
					out.write("Login Failed...");
					RequestDispatcher rd=request.getRequestDispatcher("LoginForm.jsp");
					rd.forward(request, response);
				}
				
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}

}
