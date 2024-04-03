
<%@page import="com.emergentes.modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<Persona> lisaux = new ArrayList<Persona>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
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
        
        <h1>Registro de calificaciones</h1>
        <a href ="MainServlet?op=nuevo" >Nuevo registro</a>
        <br><br>
        <table border = "1">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>P1</th>
                <th>P2</th>
                <th>P3</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if (lista != null){
                    for(Persona item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombrecomp() %></td>
                <td><%= item.getParcial1() %></td>
                <td><%= item.getParcial2() %></td>
                <td><%= item.getParcial3() %></td>
                <td><%= item.getNota() %></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                       onclick ="return(confirm('¿Estas seguro de eliminar?'))"
                       >Eliminar</a>
                </td>
            </tr>
            <%
                }
            }
            %>
            
        </table>
    </body>
</html>
