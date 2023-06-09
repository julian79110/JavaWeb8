<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="autor" content="Dylan Diaz">
    <meta name="descripcion" content="">
    <meta name="Keywords" content="registrar usuario, formulario de registro, crear cuenta">
    <meta name="viewport" content="width=device-width, initiale-scale=1">
    <title>Ingreso de usuario</title>
    <link rel="icon" href="./img/logoApp.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link type="text/css" rel="stylesheet" href="./css/Style.css" >
</head>
<body>
<div class="container">
    <header></header>
    <nav><a href="login">Login | <a href="https://www.sena.edu.co">SENA</a></a></nav>
    <section>
        <div class="divStile">
            <div class="centerD">
                <img class="centerD md-4" src="img/logo.png" alt="My app" width="150px">
            </div>
            <div class="centerD">
                <h1>My App</h1>
            </div>
            <form action="" method="post">
                <div class="col-md-12">
                    <label for="firstname" class="form-label">Nombre de usuario:</label>
                    <input type="text" id="firstname" name="firstname" class="form-control">
                </div>
                <div class="col-md-12">
                    <label for="password" class="form-label">Contraseña:</label>
                    <input type="password" class="form-control" id="password">
                </div>
                <div class="centerD">
                    <button type="submit" class="btn btn-outline-light">Ingresar</button>
                </div>
                <div class="centerD">
                    <a href="Users">Registrarse</a>
                </div>
            </form>
        </div>
    </section>
    <footer>
        <p>Todos los Derechos Reservados My App © <%=displayDate()%> </p>
    </footer>
    <%!
    public String displayDate(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }%>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</html>