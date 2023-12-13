<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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
            background-color: #e3e5e8;
            margin: 20px;
        }

        .container {
            margin-top: 30px;
        }

        h2 {
            text-align: center;
            color: #007bff;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
        }

        table {
            margin-top: 20px;
        }

        th, td {
            text-align: center;
        }

        thead {
            background-color: #007bff;
            color: #fff;
        }
        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Заявки на обслуживание</h2>
    <p style="display:inline;"><a href='<c:url value="/index" />' class="btn btn-primary">Мои клиенты</a> <a href='<c:url value="/create" />' class="btn btn-primary">Добавить новую заявку</a></p></p>
    <table class="table table-bordered" id="appointments">
        <thead>
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Телефон</th>
            <th>Машина</th>
            <th>Год</th>
            <th>Дата</th>
            <th>Время</th>
            <th>Услуга</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="appointments" items="${appointments}">
            <tr>
                <td>${appointments.id}</td>
                <td>${appointments.name}</td>
                <td>${appointments.phone}</td>
                <td>${appointments.car}</td>
                <td>${appointments.year}</td>
                <td>${appointments.date}</td>
                <td>${appointments.time}</td>
                <td>${appointments.service}</td>
                <td class="btn-group">
                    <form method="post" action='<c:url value="/deleteapp" />' style="display:inline;">
                        <input type="submit" value="Удалить" class="btn btn-danger"></form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
