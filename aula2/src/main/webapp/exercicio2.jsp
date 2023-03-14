<%-- 
    Document   : exercicio1
    Created on : 12/03/2023, 20:30:02
    Author     : mateu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercício 2</title>
    </head>
    <body>
        <ul>
            <%
                for (int i = 1; i <= 20; i++){
                    if (i % 2 == 0){%>
                        <li><%= i %></li>  
                    <% }
                }
            %>
        </ul>
    </body>
</html>
