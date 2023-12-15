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
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="appointment" items="${appointments}">
            <tr>
                <td>${appointment.id}</td>
                <td>${appointment.name}</td>
                <td>${appointment.phone}</td>
                <td>${appointment.car}</td>
                <td>${appointment.year}</td>
                <td>${appointment.date}</td>
                <td>${appointment.time}</td>
                <td>${appointment.service}</td>
                <td class="btn-group text-center border-0" style="padding: 0;">
                    <form method="post" action='<c:url value="/deleteapp" />' style="margin: 0; padding: 0; display:inline; border: none; width: 100%;">
                        <input type="hidden" name="id" value="${appointment.id}">
                        <button type="submit" class="btn btn-danger border-0" style="margin-left: 30px; width: 100%; display: inline-block; text-align: center;">Удалить</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
