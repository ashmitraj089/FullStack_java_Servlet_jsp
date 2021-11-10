package Emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 

public class AutopopulateEdu extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		
	
    	
    	
	
	Connection con = null;

            Statement st = null;
            ResultSet rs = null;
	

 

        try {
	
	  Class.forName("oracle.jdbc.driver.OracleDriver");
            System.out.println("Driver is loaded");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","Aniket@722");
            System.out.println("Got database connection by Aniket Singh Shaktawat");
	 st = con.createStatement();
          		
	
	

	 
	 	HttpSession session = request.getSession();
		String s = (String) session.getAttribute("uname");
		System.out.println(s);

		
		
//		 PreparedStatement ps=con.prepareStatement("SELECT * from personaldetails where Username=?");
//			ps.setString(1, s);
//			ps.executeQuery();
		
//	
//		rs = st.executeQuery("SELECT * FROM personaldetails where Username='s'");
	

 
	
		PreparedStatement ps=con.prepareStatement("select * from educationaldetails where Username=?");  
		ps.setString(1, s);
		rs =ps.executeQuery();  
		rs.next();//now on 1st row  
		
	
   
	
	

	
		
		String uname = rs.getString(1);
		System.out.println("NAME: "+uname);
	
		int Secondary = rs.getInt(2);
		
		session.setAttribute("v1", Secondary);
		
		int SS = rs.getInt(3);
		session.setAttribute("v2", SS);
		
		
		String BTech = rs.getString(4);
		session.setAttribute("v3", BTech);
		
		
		int MTech = rs.getInt(5);
		session.setAttribute("v4", MTech);
		
	
		

		

		response.sendRedirect("EducationalDetailsEdit.jsp");
            st.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Exception caught : " + e);
        } 
     
        finally
	{
		try{
		if(rs!=null){
			rs.close();
		}
		if(st!=null){
			st.close();
		}
		if(con!=null){
			con.close();
		}
		}
		catch (SQLException e) {
           		System.out.println("Error in closing resources : " + e);
		e.printStackTrace();
       		 }
	}	



    }

 

}