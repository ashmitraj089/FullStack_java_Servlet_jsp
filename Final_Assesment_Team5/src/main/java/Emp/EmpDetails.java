package Emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.*;


public class EmpDetails extends HttpServlet
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

			
			PreparedStatement pstmt = con.prepareStatement("insert into personaldetails values(?,?,?,?,?,?,?)");
			
			
			String fname= request.getParameter("FirstName");
			String lname= request.getParameter("LastName");
			String email= request.getParameter("Email");
			int phone = Integer.parseInt(request.getParameter("Phone"));
			String date= request.getParameter("Date");
			String address= request.getParameter("address");
			
			
			pstmt.setString(1,s);
			
	
			pstmt.setString(2,fname);
			pstmt.setString(3,lname);
		
		
			pstmt.setString(4,email);
		
		pstmt.setInt(5,phone);
		
		
		pstmt.setString(6,date);
		pstmt.setString(7,address);
		
	            
	           pstmt.execute();
		
	            con.close();
	            pstmt.close();
	            response.sendRedirect("EducationalDetails.jsp");
			


		}

		catch(Exception e)
		{

			System.out.println("Exception caught..." + e);
		}



	}






}