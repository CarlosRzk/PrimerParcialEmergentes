<%@page import="com.emergentes.modelo.Persona"%>
<%
    Persona reg = (Persona) request.getAttribute("miobjper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <textarea rows="5" cols="50">

        PRIMER PARCIAL TEM-742 
        Nombre: Carlos Ariel Quispe Yujra
        Carnet: 11064494
        </textarea>
        
        <h1>Ingrese los datos del/la estudiante</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombre del estudiante:</td>
                    <td><input type="text" name="nombrecomp" value="<%= reg.getNombrecomp() %>"></td>
                </tr>
                <tr>
                    <td>Primer parcial (sobre 30 pts):</td>
                    <td><input type="text" name="parcial1" value="<%= reg.getParcial1() %>"></td>
                </tr>
                <tr>
                    <td>Segundo parcial (sobre 30 pts):</td>
                    <td><input type="text" name="parcial2" value="<%= reg.getParcial2() %>"></td>
                </tr>
                <tr>
                    <td>Tercer parcial (sobre 40 pts):</td>
                    <td><input type="text" name="parcial3" value="<%= reg.getParcial3() %>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>        
        </form>
    </body>
</html>