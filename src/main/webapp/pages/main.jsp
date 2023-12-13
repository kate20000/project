<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Автосервис</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
        }

        .container {
            margin-top: 50px;
        }

        h2 {
            color: #007bff;
        }

        .navbar {
            background-color: #007bff;
        }

        .navbar-brand,
        .navbar-nav li a {
            color: #fff;
        }

        .btn-group {
            margin-top: 20px;
        }

        .btn {
            margin: 10px;
            display: block;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand"></a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">

            </ul>
        </div>
    </div>
</nav>

<div class="container text-center">
    <h2>Добро пожаловать в Автосервис</h2>
    <div class="btn-group">
        <a href='<c:url value="/login" />' class="btn btn-success">Вход для админа</a>
        <a href='<c:url value="/price" />' class="btn btn-success">Список услуг</a>
        <a href='<c:url value="/create" />' class="btn btn-success">Оставить заявку на обслуживание</a>
    </div>
</div>
</body>
</html>
