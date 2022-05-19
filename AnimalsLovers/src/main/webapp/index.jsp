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
<body style="background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c);" class="container">
<strong>Bonjour</strong> <%=login %><br>
<div style="align-content: center;font-size: 17px;padding: 7px 13px;border-radius: 3px solid ;text-transform: uppercase;font-weight: bold; ">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="./index.jsp"><i class="fa-solid fa-house-chimney"></i>Notre Parc</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./InfoClient.jsp" > Nos Clients</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle"  id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Nos animaux
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="./EtatAnimal.jsp">Animaux à adopter</a></li>
            <li><a class="dropdown-item"  href="./EtatAnimalAdop.jsp">Animaux adoptés</a></li>
           
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./Apropos.jsp">A propos de notre Parc</a>
        </li>
        <li class="nav-item">
          <a  href="Logout" class="nav-link ">se déconnecter</a>
        </li>
      </ul>
      
      
      
      <form  action="Login"  method="GET" class="d-flex">
        <input class="form-control me-2"  name="cin" type="search"  placeholder="Entrer CIN de votre client" aria-label="Search">
        <button class="btn btn-outline-success" name="abc" type="submit" value="Rechercher Client">Search</button>
      </form>
      
    </div>
  </div>
</nav>
</div>

<br>
<br>
<br>
<h2 class="text-success">
Liste de tous les  animaux  dans notre Parc:
</h2>
 
<table  class="container" border="1">
<tr>
<th> Identifiant de l'animal</th>
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
int number=0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, user, pwd);
	PreparedStatement pst=con.prepareStatement("select * from Animal");
	
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
	pst=con.prepareStatement("select count(*) from Animal ");
	rs = pst.executeQuery();
	rs.next();
	number=rs.getInt(1);
	rs.close();
	pst.close();
	con.close();
	
} catch (Exception e)

{
System.out.print(e);
}

%>

</table>
l'effectif total des animaux : <%=number %>
</body>
</html>
