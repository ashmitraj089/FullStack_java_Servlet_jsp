package Emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.*;


public class LoginValidation extends HttpServlet
{

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		
	{
		try
		{

			Scanner sc = new Scanner(System.in);

			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver loaded successfully");


			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","Aniket@722");

			
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery("SELECT COUNT(*) AS rowcount FROM EMPLOYEES");
			rs.next();
			
			int count = rs.getInt("rowcount") ;
			
			
			// compare using sql command
			
			String username= request.getParameter("UserName");
			String password= request.getParameter("Password");
			rs = s.executeQuery("SELECT * FROM employees");
			int test1 = 0;
			
			HttpSession session = request.getSession();
			session.setAttribute("uname", username);
			
			
			while(rs.next())
			{
			   String Username = rs.getString(1);
			   String Password = rs.getString(2);
			   
			   
			   
			   
			   
			      if(Username.trim().equals(username)&& Password.trim().equals(password)) {
			          
			    	  response.sendRedirect("EmpDetails.jsp");
			    	  test1++;
			      }
			      
			   
			   
			}

			
			 if(test1==0)
		      {
				 
				 System.out.println("Invalid User");
		      }
		      
			// We have traversed all rows but not found matching user
			

		
	            con.close();
	            rs.close();
	            
			


		}

		catch(Exception e)
		{

			System.out.println("Exception caught..." + e);
		}
		



	}






}