<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">
        <title>Starter Template for Bootstrap</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
        <title>Tareas</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li><a href="index.jsp">Tarea</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        
        <h1></h1>
        <br><br><br>
        
        <table class="table table-bordered">
        <!--    table
            thead
                th = encabezados
            tbody
                tr = fila
                    td = dato de columna
                    th ID
                    th nombre
                    th apellido
                    body
                    tr
                        td ID1
                        td Nombre1
                        tr Apellido1
                    /tr
                    tr
                        td ID2
            <th>ID</th>
            <td>2</td>
            <th>NOMBRE</th>
            <td>Alicia</td>
-->

<thead>
<th> ID </th>
<th>NOMBRE</th>
<th>ACCIONES</th>
<tbody>
    <%
        Coneccion con=new Coneccion();
        con.setConsulta("select * from Responsables");
    while(con.getResultado().next()){
%>
<tr>
    <td><%out.println(con.getResultado().getString("reponsable_id"));%></td>
    <td><%out.println(con.getResultado().getString("nombre"));%></td>
    <td><a href="editar.jsp" class="btn btn-primary">EDITAR</a>
    <a href="elimianr.jsp" class="btn btn-danger">ELIMINAR</a></td>
</tr>
<% } %>
    
    
</tbody>    
</thead>



        </table>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    </body>
</html>
