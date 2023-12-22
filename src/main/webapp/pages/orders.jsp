<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Заказы</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            margin: 5%;
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

        th {
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
            color: #657d9c;
        }
        a {
            text-decoration: none;
        }

        .btn-group {
            display: flex;
        }
        .btn-primary {
            background-color: #657d9c;
            color: #fff;
        }
        .btn-group a, .btn-group form {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div>
    <h2>Мои заказы</h2>
    <p><a href='<c:url value="/addorder" />' class="btn btn-primary">Добавить новый заказ</a></p>
    <table>
        <thead>
        <tr>
            <th>Код</th>
            <th>Заказ</th>
            <th>Количество</th>
            <th>Телефон</th>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>${order.id}</td>
                <td>${order.order}</td>
                <td>${order.amount}</td>
                <td>${order.phone}</td>
                <td class="btn-group text-center border-0" style="padding: 0;">
                    <form method="post" action='<c:url value="/deleteord" />' style="margin: 0; padding: 0; display:inline; border: none; width: 100%;">
                        <input type="hidden" name="id" value="${order.id}">
                        <button type="submit" class="btn btn-danger border-0" style="width: 100%; display: inline-block; text-align: center;">Удалить</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
