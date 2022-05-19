<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style=" width:400px;margin:0 auto;margin-top:10%;">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title> Espace Client</title>
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="./Auth.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body class="container"  >

<form style="background: linear-gradient(0.4turn,#FFF8DC,white,green);" method="POST" action="Login2" style=" width:100%;padding: 30px;border: 1px solid #f1f1f1; background: #fff;box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);">
<table>
<tr>
<td> Nom de l'utilisateur: </td>
<td> <input style=" width:100%;padding:12px 20px;margin:8px 0;display: inline-block;border: 1px solid #ccc;box-sizing: border-box;" type="text" name="login" required> </td>
</tr>

<tr>
<td> Le mot de passe: </td>
<td> <input style=" width: 100%;padding: 12px 20px;margin: 8px 0;display: inline-block;border: 1px solid #ccc;box-sizing: border-box;" type="password" name="pwd" required></td>
</tr>

<tr>
<td > <input style="background-color:blue ;color: white;padding: 14px 20px;margin: 8px 0;border: none;cursor: pointer;width: 100%;" type="submit" name="action" value="Se Connecter"> </td>
<td > <input style="background-color: #D3D3D3;color: white;padding: 14px 20px;margin: 8px 0;border: none;cursor: pointer;width: 100%;"  type="reset" value="Se deconnecter"> </td>
</tr>

</table>
</form>
</body>
</html>