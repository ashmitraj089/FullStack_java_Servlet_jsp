package Emp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.*;


public class EducationalDetailsEdit extends HttpServlet
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
			
			

			
			// Statement st = con.createStatement();
			 PreparedStatement ps=con.prepareStatement("delete from educationaldetails where Username=?");
				ps.setString(1, s);
				ps.executeQuery();
			
				
				
				
				PreparedStatement pstmt = con.prepareStatement("insert into educationaldetails values(?,?,?,?,?)");

				
				
				
				int Secondary= Integer.parseInt(request.getParameter("Secondary"));
				int SS= Integer.parseInt(request.getParameter("SS"));
				int BTech= Integer.parseInt(request.getParameter("BTech"));
				int MTech = Integer.parseInt(request.getParameter("MTech"));
				
				
				
				pstmt.setString(1,s);
				
		
				pstmt.setInt(2,Secondary);
				pstmt.setInt(3,SS);
				pstmt.setInt(4,BTech);
				pstmt.setInt(5,MTech);
				
				
			
		            
		           pstmt.execute();
			
		            ps.close();
		            pstmt.close();
		            con.close();
		       // st.execute("DELETE from personaldetails WHERE Username='s'");    


			
			
			
			
			
			
			
			//String sqlUpdate = "UPDATE personaldetails"
	        //        + "SET Firstname = ?, Lastname = ?, Email = ?, Phone = ?, Date = ?, Address = ?"
	          //      +"where Username = s"; 
			
//			
//	          PreparedStatement ps=con.prepareStatement("update personaldetails set Firstname=?,Lastname=?, Email=?, Phone=?, Date=?, Address =? where Username=?"); 
//	          
//	          System.out.println(request.getParameter("FirstName"));
//	          
//	          
//	          String fname= request.getParameter("FirstName");
//				String lname= request.getParameter("LastName");
//				String email= request.getParameter("Email");
//				System.out.println(request.getParameter("LastName"));
//				int phone = Integer.parseInt(request.getParameter("Phone"));
//				System.out.println(request.getParameter("Email"));
//				String date= request.getParameter("Date");
//				String address= request.getParameter("address");
//				
//				System.out.println(request.getParameter("LastName"));
//				
//				
//	      		
//         ps.setString(1,fname);  
//         ps.setString(2,lname);  
//         ps.setString(3,email);  
//         ps.setInt(4,phone);  
//         ps.setString(5,date);  
//         ps.setString(6,address);
//         ps.setString(7,s);
//         System.out.println(request.getParameter("FirstName"));
//         ps.executeUpdate();  
//         System.out.println(request.getParameter("LastName"));
//         
//
//			
			
			
			
			
			
			
		
			
		//System.out.println("\nEnter Age: ");
			//pstmt.setString(2,fname);
		
		//System.out.println("\nEnter Name: ");
		//	pstmt.setString(3,lname);
		//System.out.println("\nEnter Salary: ");
		//pstmt.setString(4,email);
		
		//System.out.println("\nEnter Designation: ");
		//pstmt.setInt(5,phone);
		//pstmt.setString(6,date);
		//pstmt.setString(7,address);
	            
	           
				//st.close();
		
	            //con.close();
	            //ps.close();
	            response.sendRedirect("login.jsp");
			


		}

		catch(Exception e)
		{

			System.out.println("Exception caught..." + e);
		}



	}






}