<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BIENVENU</title>
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body  style="background: linear-gradient(0.7turn,lightgray,white);" class="container">


      <div class="container">
          <div class="row">
              <div class="col-12">
                  <h1 class="text-center text-primary">Vous êtes les bienvenus !</h1>
                  <form  action="./Enregistrer"  method="POST" style=" width:100%;padding: 30px;border: 1px solid #f1f1f1;box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);">
                      <div class="form-group">
                        <label for="cin">CIN:</label>
                        <input type="text" name="cin1" id="cin1" required class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="nom">Nom:</label>
                        <input type="text" name="nom1" id="nom1"  required  class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="prenom">Prenom:</label>
                        <input type="text" name="prenom1" id="prenom1"  required class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="tel">n° Tel:</label>
                        <input type="tel" name="tel" id="tel"  required class="form-control">
                      </div>
                      
                      <div class="form-group">
                        <label for="mail">E-mail:</label>
                        <input type="mail" name="mail" id="mail"   required class="form-control">
                      </div>
                
                     
                    <div class="form-group">
                        <label for="mot">Mot de passe:</label>
                        <input type="password" name="mot" id="mot"   required class="form-control">
                        
                         <div class="form-check">
                          <label class="form-check-label">
                          <input type="radio" class="form-check-input"   name="homme" id="r1" value="Homme">
                        homme
                        </label>
                      </div>
                      <div class="form-check">
                        <label class="form-check-label">
                        <input type="radio" class="form-check-input"  checked name="femme" id="r2" value="Femmme">
                          femme
                      </label>
                    </div>
                      </div>
                      <div class="form-group">
                        <label for="adresse">L'adresse:</label>
                        <input type="text" name="adresse" id="adresse"  required class="form-control">
                      </div>
                      
          <div class="fixed-bottom">
            <div class="row">
              <div class="col-12 text-center">
                    <button action="client.jsp" type="submit" name="benregis" id="b1" class="btn btn-primary btn-lg btn-block">Enregistrer</button>
                    <a   id="compte" href="AuthClient.jsp" class="btn btn-primary btn-lg btn-block">J'ai déja un compte </a>
                    
                    <br><br><br>
                </div>
            </div>

          </div>
                  </form>
                  
              </div>
          </div>
      </div>
 
      </body>
</html>
</body>
</html>