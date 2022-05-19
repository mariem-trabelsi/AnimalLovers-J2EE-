<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
String login="";
if (session.getAttribute("login") != null)
{
	login=session.getAttribute("login").toString();
	}
else
{response.sendRedirect("Auth.jsp");}
%>

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
<body style="background: linear-gradient(0.25turn, #f69d3c, #ebf8e1, #3f87a6);" class="container">
<body>
<strong>le soin de l'animal devient votre mission,</strong> <%=login %><br>
<br>
<h2 style="font-family: guildfordCond;
    text-transform: uppercase;
    line-height: 1em;
    color: #25b2a2;
    padding-right: 20px;
    padding-left: 20px;">
Liste des  animaux à adopter dans notre Parc:
</h2>
 
<table  class="container" border="1">
<tr>
<th>Identifiant de l'animal</th>
<th> Code de son espèce</th>
<th> Cin du client</th>
<th> Nom de l'animal</th>
<th> Description de l'animal </th>
<th> Age de l'animal</th>
<th> Type de l'animal</th>
<th> Raison d'adoption</th>
</tr>
<% 
String url ="jdbc:mysql://localhost:3306/parc_animaliers";
String user ="root";
String pwd ="meriemtrabelsi2022";

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, user, pwd);
	PreparedStatement pst=con.prepareStatement("select * from Animal where etat_adopt='non'");
	
	ResultSet rs = pst.executeQuery();
	while(rs.next()) {
		
		
%>



<tr>
        <td id="id1"><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
        <td><%=rs.getString(8) %></td>
        <td><a  href="Delete?id1=<%=rs.getString(1) %>"type="submit" class="btn btn-success">Adopter</a></td>
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