
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

@WebServlet("/Enregistrer")
public class Enregistrer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Enregistrer() {
        super();
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        
        HttpSession session =request.getSession();
			
		
		String cin=request.getParameter("cin1");
		String login=request.getParameter("nom1");
		String prenom=request.getParameter("prenom1");
		String tel=request.getParameter("tel");
		String mail=request.getParameter("mail");
		String age=request.getParameter("mot");
		String femme=request.getParameter("femme");
		String adresse=request.getParameter("adresse");
		
		String url ="jdbc:mysql://localhost:3306/parc_animaliers";
		String user ="root";
		String pwd ="meriemtrabelsi2022";
		
		
		response.setContentType("text/html");
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
		    PreparedStatement stm =con.prepareStatement("insert into client (cin_clt,nom_clt,prenom_clt,tel_clt,email_clt,pass_clt,genre_clt,adresse_clt )values(?,?,?,?,?,?,?,?)");       
		    stm.setString(1,cin);
		    stm.setString(2,login);
		    stm.setString(3,prenom);
		    stm.setString(4,tel);
		    stm.setString(5,mail);
		    stm.setString(6,age);
		    stm.setString(7,femme);
		    stm.setString(8,adresse);
			stm.executeUpdate();
			
			session.setAttribute("login",login);
			response.sendRedirect("client.jsp");
			
			stm.close();
			con.close();
			
			
			
		} catch (Exception e)
		
		{
			System.out.print( e);
		}
		
		 
		}
	
	

}
