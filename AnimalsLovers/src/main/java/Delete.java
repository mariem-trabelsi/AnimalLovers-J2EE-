

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
HttpSession session =request.getSession();
  if(session.getAttribute("login")!= null) {
	  String  c = (String) session.getAttribute("login");
		
		String url ="jdbc:mysql://localhost:3306/parc_animaliers";
		String user ="root";
		String pwd ="meriemtrabelsi2022";
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String id1 = request.getParameter("id1");
		
		
		
	      
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
		    
			 PreparedStatement pst=con.prepareStatement("update Animal set etat_adopt='oui' where id_animal=? ");
			 PreparedStatement pst1=con.prepareStatement("update Animal set cin_clt= (select cin_clt from client where nom_clt =? )  where id_animal=?");
		     pst.setString(1,id1);
		     pst.executeUpdate();
		     pst1.setString(1,c);
		     pst1.setString(2,id1);
		     pst1.executeUpdate();
		     PreparedStatement pst3=con.prepareStatement("update animal set cin_clt=null where etat_adopt='non';");
		     pst3.executeUpdate();
		     response.sendRedirect("client.jsp");
		    	
		   pst.close();
		   con.close();
		   
			
		
		} catch (Exception e)
		
		{
			System.out.print(e);
		}
	
	}
	}


}
