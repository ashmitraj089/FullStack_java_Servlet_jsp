package Emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;


public class register extends HttpServlet
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
			System.out.println(username);
			rs = s.executeQuery("SELECT * FROM employees");
			int test = 0;
			
			
			
			while(rs.next())
			{
				
				String Username = rs.getString(1);	   
			   
			    if(Username.trim().equals(username)) {
			          
			    	  
			    	  System.out.println("User Alredy exists please login");
			    	  test++;
			    
			    	  
			      }
			      
			}
			
			
			    if(test==0)
			    {
			    PreparedStatement pstmt = con.prepareStatement("insert into employees values(?,?)");
				
				
				pstmt.setString(1,username);					
			
				pstmt.setString(2,password);			

		            
		           pstmt.execute();
			
		       
		            pstmt.close();
	    	  
	    	  
		            response.sendRedirect("login.jsp");
			    }
			    
			    if(test==1)
			    {
			    	response.sendRedirect("login.jsp");
			    }
	    	  
			    
			    
			      
			   
			
			

		
	            con.close();
	            rs.close();
	            
			


		}

		catch(Exception e)
		{

			System.out.println("Exception caught..." + e);
		}
		



	}






}