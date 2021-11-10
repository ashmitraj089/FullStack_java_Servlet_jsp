package Emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.*;


public class EducationalDetails extends HttpServlet
{

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		
	{
		try
		{

			Scanner sc = new Scanner(System.in);

			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver loaded successfully");


			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","Aniket@722");
			
			HttpSession session = request.getSession();
			String s = (String) session.getAttribute("uname");
			System.out.println(s);


			
			PreparedStatement pstmt = con.prepareStatement("insert into educationaldetails values(?,?,?,?,?)");
			
			
			int Tenth = Integer.parseInt(request.getParameter("Secondary"));
			int Twelfth = Integer.parseInt(request.getParameter("SS"));
			int BTech = Integer.parseInt(request.getParameter("BTech"));
			int MTech = Integer.parseInt(request.getParameter("MTech"));
			
			
		
			pstmt.setString(1,s);
			pstmt.setInt(2,Tenth);
		
	
			pstmt.setInt(3,Twelfth);
	
		pstmt.setInt(4,BTech);
		
		
		
		pstmt.setInt(5,MTech);
		
		
	            
	           pstmt.execute();
		
	            con.close();
	            pstmt.close();
	            System.out.println("Mission Accomplished");
	            response.sendRedirect("login.jsp");
			


		}

		catch(Exception e)
		{

			System.out.println("Exception caught..." + e);
		}



	}






}