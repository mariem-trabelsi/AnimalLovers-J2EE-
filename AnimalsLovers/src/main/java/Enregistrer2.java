

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Enregistrer2")
public class Enregistrer2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
    


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session =request.getSession();
      if (session.getAttribute("login") != null)
       {
    	  
    	String ida=request.getParameter("ida");
  		String cd=request.getParameter("code");
  		String idc=request.getParameter("idc");
  		String n=request.getParameter("nom");
  		String ds=request.getParameter("desc");
  		String age=request.getParameter("age");
  		String t=request.getParameter("typea");

  	
  		
  		String url ="jdbc:mysql://localhost:3306/parc_animaliers";
		String user ="root";
		String pwd ="meriemtrabelsi2022";

		response.setContentType("text/html");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
		    PreparedStatement stm =con.prepareStatement("insert into Animal (id_animal,code_espece,cin_clt,nom_animal,desc_animal,age_animal,type_animal) values(?,?,?,?,?,?,?)");       
		    stm.setString(1,ida);
		    stm.setString(2,cd);
		    stm.setString(3,idc);
			stm.setString(4,n);
			stm.setString(5,ds);
			stm.setString(6,age);
			stm.setString(7,t);
			stm.executeUpdate();
			response.sendRedirect("client.jsp");
		
			stm.close();
			con.close();
			
			
			
		} catch (Exception e)
		
		{
			System.out.print(e);
		}
    	  
      	}
      else {
    	  response.sendRedirect("AuthClient.jsp");
      }


		 
		}
	}


