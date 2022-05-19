<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
String login="";
if (session.getAttribute("login") != null)
{
	login=session.getAttribute("login").toString();
	}
else
{response.sendRedirect("AuthClient.jsp");}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Espace Client</title>
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body style="background: linear-gradient(0.25turn, #ffffff, #ebf8e1, #f69d3c);" class="container">
<div>
<strong>Bonjour</strong> <%=login %> <br>
</div>
<br>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" >Notre Parc</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active"  style="display:none" aria-current="page" href="./InfoClient.jsp" > Nos Clients</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle"  id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Nos animaux
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="./EtatAnimal.jsp">Animaux à adopter</a></li>
            <li><a class="dropdown-item" href="./EtatAnimalAdop.jsp">Animaux adoptés</a></li>
            
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./Apropos.jsp">A propos de notre Parc</a>
        </li>
        <li class="nav-item">
          <a href="Logout2" class="nav-link ">se déconnecter</a>
        </li>
      </ul>
      
      <form  action="chercher" class="d-flex">
        <input class="form-control me-2"  name="cin" type="search" placeholder="Entrer l'espèce de l'animal" aria-label="Search">
        <button class="btn btn-outline-success" name="animal" type="submit" value="Rechercher Animal">Search</button>
      </form>
      
    </div>
  </div>
</nav>
<h1 style="font-family: guildfordCond;
text-transform: uppercase;
line-height: 1em;
font-size: 3.5em;
text-align: center;
margin: 65px auto 45px auto;
color: #000000;
max-width: 980px;
padding-right: 20px;
padding-left: 20px;"> Vous êtes les bienvenus </h1>

<div class="row">
<div class="col-md-5">
<p>
Un animal de compagnie est une source de joie pour toute la famille ! Non seulement les enfants aiment jouer avec leurs compagnons à poils, mais ils s'émerveillent également du moindre de leurs gestes. Ainsi, le simple fait de les nourrir crée des souvenirs inoubliables.

</p>
<a type="button" class="btn btn-primary btn-lg" href="adopter.jsp" >Adopter un animal </a>
</div>
<div  class="col-md-2"></div>
<div class="col-md-5">
<p>
En cas de voyage ou toute autre raison, vous pouvez remplir un formulaire en décrivant l'état de votre animal et en précisant la durée dans laqualle vous serez absents pour s'occuper de lui .
Notre mission est de protéger l'animal. 
</p>
<a type="button" href="laisser.jsp" class="btn btn-secondary btn-lg">Laisser votre animal chez notre parc </a>

</div>
</div>
</body>
</html>
