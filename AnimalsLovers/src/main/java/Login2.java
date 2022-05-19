

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login2")
public class Login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login2() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession();
		
		String url ="jdbc:mysql://localhost:3306/parc_animaliers";
		String user ="root";
		String pwd ="meriemtrabelsi2022";
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String login = request.getParameter("login");
		String pass = request.getParameter("pwd");
	
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
		    java.sql.Statement stm =con.createStatement();
		
			ResultSet rs = stm.executeQuery("select * from client where nom_clt='"+login+"' and pass_clt='"+pass+"';");
			
			if(rs.next()) {
				session.setAttribute("login",login);
				response.sendRedirect("client.jsp");
			}
			else
			    out.println(" Wrong login and password ... ");
				response.sendRedirect("AuthClient.jsp");
				rs.close();
				stm.close();
				con.close();
			
			
			
		} catch (Exception e)
		
		{
			System.out.print(e);
		}
		  
	
	}
		

}
