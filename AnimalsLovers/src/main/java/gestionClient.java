import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
public class gestionClient {


	public String getClient (int cin) {
	
	String registred =null;

	String username = "root";
	String password = "meriemltrabelsi2022";
	String url ="jdbc:mysql://localhost:3306/parc_animaliers";
	
	try {
	
	Connection con = DriverManager.getConnection(url,username,password);
	con = DriverManager.getConnection(url,username,password);
	Statement stmt = con.createStatement();

	String selectQuery = "Select * from client where CIN_CLT = "+cin+" ;" ;
	
	ResultSet results = null;
	results = stmt.executeQuery(selectQuery);
	if (results.next())
	{
	registred = "Client trouvé: " + results.getString("NOM_CLT") + " L'adresse :" + results.getString("ADRESSE_CLT");
	}
	
	else
	{ 
	registred = "Client non trouvé !";
	}
	
	stmt.close();
	con.close();
	} catch (SQLException e) {
	
	e.printStackTrace();
	}
	return registred ;
	}
	
	}

