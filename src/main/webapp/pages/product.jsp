<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Заявка на обслуживание</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f7f7;
            margin: 20px;
        }

        .container {
            margin-top: 30px;
        }

        h2 {
            text-align: center;
            color: #657d9c;
        }

        .btn-primary {
            background-color: #657d9c;
            color: #fff;
        }

        table {
            margin-top: 20px;
        }

        th, td {
            text-align: center;
        }

        thead {
            background-color: #657d9c;
            color: #fff;
        }
        tbody tr:nth-child(even) {
            background-color: #fff;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Запчасти</h2>
    <p style="display:inline;"> <a href='<c:url value="/price" />' class="btn btn-primary">Услуги</a><a href='<c:url value="/addorder" />' class="btn btn-primary">Оформить новый заказ</a></p>
    <table class="table table-bordered" id="products">
        <thead>
        <tr>
            <th>Продукт</th>
            <th>Цена</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.product}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
