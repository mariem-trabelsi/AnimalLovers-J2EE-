import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.xdevapi.Statement;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Login() {}
    
       
  

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
    ServletException, IOException {
    String action = request.getParameter("abc");
    if(action!=null && action.equals("Rechercher Client"))
     {
    String chaineIdClient = request.getParameter("cin");
    response.getWriter().append("Action reçue: " +action + " ayant n° CIN : "+chaineIdClient);
	int x = Integer.parseInt(chaineIdClient);
	
	gestionClient g = new gestionClient();
	String info = g.getClient(x);
	response.getWriter().append("\nAction reçue: " + action +" "+ "\ndétails : " +info);
     }
    }
    
    


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession();
		
		String url ="jdbc:mysql://localhost:3306/parc_animaliers";
		String user ="root";
		String pwd ="meriemtrabelsi2022";
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String login = request.getParameter("login");
		String pass  = request.getParameter("pwd");
	
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
		    java.sql.Statement stm =con.createStatement();
		
			ResultSet rs = stm.executeQuery("select * from user where login='"+login+"' and pwd= '"+pass+"';");
			
			if(rs.next()) {
				session.setAttribute("login",login);
				response.sendRedirect("index.jsp");
			}
			else
			    out.println(" Wrong login and password...");
				response.sendRedirect("Auth.jsp");
				rs.close();
				stm.close();
				con.close();
				
			
			
			
		} catch (Exception e)
		
		{
			System.out.print(e);
		}
		  
	
	}
		
	}


