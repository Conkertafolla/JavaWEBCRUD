<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar usuario</title>
        <script src='<c:url value="/js/jquery-3.6.0.min.js"/>'></script>
        <script src='<c:url value="/js/jquery.validate.min.js"/>'></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    </head>
    <style>
        .error{
            color: red;
            font-size: 14px;
        }
    </style>

    <script>
        $(document).ready(function(){
            setValidator();

        });

        function setValidator(){
            $("#add_user_form").validate({
                rules: {
                    name : {
                        required: true
                    },
                    userName : {
                        required: true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 8
                    }
                },
                messages:{
                    name:{
                        required: "El campo es requerido"
                    },
                    userName:{
                        required: "El campo es requerido"
                    },
                    email:{
                         required: "El campo es requerido",
                         email: "El email debe de tener el formato: abc@domain.tld"
                    },
                     password: {
                        required: "El campo es requerido",
                        minlength: "La contraseña debe de tener al menos 8 caracteres"
                    }
                    
                }
            });
        }
    </script>
    




    <body>
        
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Agregar nuevo registro</h4>
                </div>
                <div class="card-body">
                    <form id='add_user_form' method="POST">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Nombre:</label>
                                <input type="text" id="name" name="name" class="form-control" />
                            </div>
                            <div class="col-md-6">
                                <label>User Name:</label>
                                <input type="text" id="user_name" name="userName" class="form-control" />
                            </div>
                            
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Correo:</label>
                                <input type="text" id="email" name="email" class="form-control" />
                            </div>
                            <div class="col-md-6">
                                <label>Contraseña:</label>
                                <input type="text" id="password" name="password" class="form-control" />
                            </div>
                        </div>
                        
                        <input type="submit" value="Agregar" class="btn btn-success"/>
                        <a href="index.htm" class="btn btn-primary">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>
