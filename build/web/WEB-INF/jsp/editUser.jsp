<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>

        <script src='<c:url value="/js/jquery-3.6.0.min.js"/>'></script>
        <script src='<c:url value="/js/jquery.validate.min.js"/>'></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    </head>
    <script>
        $(document).ready(function()  {
            $( ".no-editable" ).prop( "disabled", true );
            


        });
    </script>
    <body>
        
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Actualizar registro</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                         <div class="row">
                            <div class="col-md-6">
                                <label>Nombre:</label>
                                <input type="text" id="name" name="name" value="${lista[0].name}" class="form-control" />
                            </div>
                            <div class="col-md-6">
                                <label>User Name:</label>
                                <input type="text" id="user_name" name="userName" value="${lista[0].user_name}" class="form-control no-editable" />
                            </div>
                            
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Correo:</label>
                                <input type="text" id="email" name="email" value="${lista[0].email}" class="form-control " />
                            </div>
                            <div class="col-md-6">
                                <label>Contraseña:</label>
                                <input type="password" id="password" name="password" value="${lista[0].password}" class="form-control no-editable" />
                            </div>
                        </div>

                        <input type="submit" value="Actualizar" class="btn btn-success"/>
                        <a href="index.htm" class="btn btn-primary">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>