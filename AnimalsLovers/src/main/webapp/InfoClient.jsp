<%@ page language="java" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Page d'acuiel</title>
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body style="background: linear-gradient(#DBDBF5, #FFFAFA);" class="container">

<div style="align-content: center;font-size: 17px;padding: 7px 13px;border-radius: 3px solid ;text-transform: uppercase;font-weight: bold;">
</div>

<br>
<br>
<br>

<h2 style="">
Liste de nos clients dans notre Parc:
</h2>
 
<table  class="container" border="1">
<tr>
<th> n°CIN</th>
<th> Nom du client</th>
<th> Prenom du client</th>
<th> n° Tel </th>
<th> E-mail du client </th>
<th> Mot de passe</th>
<th> Le genre</th>
<th> L'adresse </th>
</tr>
<% 
String url ="jdbc:mysql://localhost:3306/parc_animaliers";
String user ="root";
String pwd ="meriemtrabelsi2022";

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, user, pwd);
	PreparedStatement pst=con.prepareStatement("select * from client");
	
	ResultSet rs = pst.executeQuery();
	while(rs.next()) {
		
%>



<tr>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
        <td><%=rs.getString(8) %></td>
</tr>
		
<% 	
	}
	rs.close();
	pst.close();
	con.close();
	
} catch (Exception e)

{
System.out.print(e);
}

%>

</table>
</body>
</html>
