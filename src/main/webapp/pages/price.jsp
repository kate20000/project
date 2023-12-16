<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Услуги</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            margin: 5%;
        }
        h2 {
            text-align: center;
            color: #657d9c;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
        }

        a {
            text-decoration: none;
        }

        .btn-group {
            display: flex;
        }

        .btn-group a, .btn-group form {
            margin-right: 10px;
        }
        thead {
            background-color: #657d9c;
            color: #fff;
        }
        .btn-primary {
            background-color: #657d9c;
            color: #fff;
        }
    </style>
</head>
<body>
<div>
    <h2>Наши услуги</h2>
    <table>
        <thead>
        <tr>
            <th>Код</th>
            <th>Услуга</th>
            <th>Цена</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="services" items="${services}">
            <tr>
                <td align="center">${services.id}</td>
                <td align="center">${services.service}</td>
                <td align="center">${services.price}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table><p><a href='<c:url value="/create" />' class="btn btn-primary">Оставить заявку на обслуживание</a></p>
</div>
</body>
</html>