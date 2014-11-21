<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
<center>
    <% if(request.getParameter("consulta")==null){ %>
<h1>Personas</h1>
<div>${mensaje}</div>
<form action="PersonaRegistro" method="post">
Id<br>
<input type="text" name="txtId" value=""/><br>
Nombres<br>
<input type="text" name="txtNombres" value=""/><br>
Apellidos<br>
<input type="text" name="txtApellidos" value=""/><br>
Edad<br>
<input type="text" name="txtEdad" value=""/><br>
<br>
<input type="submit" value="Enviar"/>
</form>
<a href="PersonaRegistro?consulta=1">Ver listado de personas</a>
<% }else{%>
<h1>Listado de personas</h1>
<table border="1">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Edad</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${ps}" var="lista">
            <tr>
                <td>${lista.id}</td>
                <td>${lista.nombres}</td>
                <td>${lista.apellidos}</td>
                <td>${lista.edad}</td>
                <td></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="Persona.jsp">Agregar persona</a>
<% }%>
</center>
</body>
</html>
