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
<body>
<strong> nous allons prendre  soin de votre animal, </strong> <%=login %><br>
<br>

<div class="container">
          <div class="row">
              <div class="col-12">
                  <h2 class="text-center text-primary">Vous êtes les bienvenus !</h2>
                  <form  action="Enregistrer2"  method="POST" style=" width:100%;padding: 30px;border: 1px solid #f1f1f1;box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);">
                      <div class="form-group">
                        <label for="ida">Id animal:</label>
                        <input type="text" name="ida" id="ida" required class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="code">Code de son espèce:</label>
                        <input type="text" name="code" id="code"  required  class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="idc">Id client:</label>
                        <input type="text" name="idc"  id="idc" required class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="nom">Nom de l'animal:</label>
                        <input type="text" name="nom" id="nom"  required class="form-control">
                      </div>
                      
                      <div class="form-group">
                        <label for="desc">Description de l'animal:</label>
                        <input type="text" name="desc" id="desc"   required class="form-control">
                      </div>
                
                     
                    <div class="form-group">
                        <label for="age">Age de l'animal:</label>
                        <input type="text" name="age" id="age"   required class="form-control">
                        
                     
                      </div>
                      <div class="form-group">
                        <label for="typea">Type de l'animal:</label>
                        <input type="text" name="typea" id="typea"  required class="form-control">
                      </div>
                      
                      
                      
                      
          <div class="fixed-bottom">
            <div class="row">
              <div class="col-12 text-center">
                    <button href="client.jsp" type="submit" name="b8" class="btn btn-primary btn-lg btn-block">Enregistrer</button>
                    <br>
                </div>
            </div>
           </div>

       </form>
       </div></div></div>           
            

</body>
</html>
