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
        <h1>Forma 1</h1>
        <table>
            <tr>
                <th>Nome</th>
                <th>Altura</th>
                <th>Peso</th>
                <th>IMC</th>
            </tr>
            <tr>
                <th>Nome 1</th>
                <th>1,58</th>
                <th>50</th>
                <th><%= calculaImc(1.58, 50)%></th>
            </tr>
            <tr>
                <th>Nome 2</th>
                <th>1,65</th>
                <th>60</th>
                <th><%= calculaImc(1.65, 60)%></th>
            </tr>
            <tr>
                <th>Nome 3</th>
                <th>1,80</th>
                <th>80</th>
                <th><%= calculaImc(1.8, 80)%></th>
            </tr>
        </table>
        <h1>Forma 2</h1>
        <%
        class Pessoa {
            double peso;
            double altura;
            String nome;
        }
        ArrayList<Pessoa> pessoas = new ArrayList();
        Pessoa pessoa1 = new Pessoa();
        pessoa1.peso = 51;
        pessoa1.altura = 1.65;
        pessoa1.nome = "Pessoa 1";
        pessoas.add(pessoa1);
        Pessoa pessoa2 = new Pessoa();
        pessoa2.peso = 75;
        pessoa2.altura = 1.88;
        pessoa2.nome = "Pessoa 2";
        pessoas.add(pessoa2);
        Pessoa pessoa3 = new Pessoa();
        pessoa3.peso = 100;
        pessoa3.altura = 1.90;
        pessoa3.nome = "Pessoa 3";
        pessoas.add(pessoa3);
        %>
        <table>
            <tr>
                <th>Nome</th>
                <th>Altura</th>
                <th>Peso</th>
                <th>IMC</th>
            </tr>
            <% for (Pessoa p: pessoas) { %>
            <tr>
                <th><%= p.nome%></th>
                <th><%= p.altura%></th>
                <th><%= p.peso%></th>
                <th><%= calculaImc(p.altura, p.peso)%></th>
            </tr>
            <%}
            %>
        </table>
    </body>
</html>
