<%-- 
    Document   : exercicio1
    Created on : 12/03/2023, 20:30:02
    Author     : mateu
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! public double calculaImc(double altura, double peso) {
        return peso / (altura * altura);
    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercício 3</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
        </style>
    </head>

    <body>
        <h1>Header</h1>
        <%@include file="header.jsp" %>
        <h1>Body</h1>
        <%@include file="body.jsp" %>
        <h1>Footer</h1>
        <%@include file="footer.jsp" %>
    </body>
</html>
