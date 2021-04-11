<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <script src='<c:url value="/js/jquery-3.6.0.min.js"/>'></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <script src=" https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css">
        

    </head>

    <script>
        var usersDeleteId;
        $(document).ready(function()  {
            


        });


        function redirectAdd(){
            window.location = 'addUser.htm';
        }

        function redirectEdit(id){
            window.location = 'editUser.htm?id='+id;
        }
        
        function deleteConfirm(id){
            $('#deleteModal').modal('show')
            usersDeleteId = id
        }

        function deleteUser(){
            window.location = 'deleteUser.htm?id='+usersDeleteId;
        }

    </script>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <button onclick="redirectAdd()" class="btn btn-light">Nuevo registro</button>
                </div>
                
                <div class="card-body">
                    
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRE</th>
                                <th>CORREO</th>
                                <th>Email</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.Id}</td>
                                <td>${dato.name}</td>
                                <td>${dato.user_name}</td>
                                <td>${dato.email}</td>
                                <td>
                                    <button onclick="redirectEdit(${dato.id})" class="btn btn-warning">Editar</button>
                                    <button onclick="deleteConfirm(${dato.id})" class="btn btn-danger">Eliminar</button>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>

            </div>
            
        </div>
        
        <div id="deleteModal" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Eliminar Usuario</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Estas seguro de eliminar el usuario</p>
                </div>
                <div class="modal-footer">
                  <button type="button" onclick="deleteUser()"class="btn btn-danger">Eliminar</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>
              </div>
            </div>
        </div>
    </body>
</html>

