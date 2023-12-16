<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Автосервис</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .footer {
            background-color: #657d9c;
            padding: 10px 0;
            color: #ffffff;
            text-align: center;

        }

        .footer h3 {
            color: #faf8f8;
            text-align: center;
        }

        .list-icons p {
            margin: 0;
        }
        .wrapper {
            margin-top: 5rem;
        }

        iframe {
            width: 100%;
            height: 450px;
        }
        nav.navbar {
            background-color: #657d9c;
        }
        ul {
            list-style-type: none;
        }
        .btn-primary {
            background-color: #657d9c;
            border-color: #657d9c;
        }

        .btn-primary:hover {
            background-color: #495d7f;
            border-color: #495d7f;
        }
    </style>
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Автосервис</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/" />'>Главная</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/login" />'>Вход для админа</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/price" />'>Список услуг</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/product" />'>Запчасти</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href='<c:url value="/create" />'>Оставить заявку на обслуживание</a>
            </li>
        </ul>
    </div>
</nav>
<div class="content">
<div class="container mt-5">
    <h2 class="text-center">Добро пожаловать в Автосервис!</h2><br><br>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <p class="text-center">Вы можете оставить заявку на обслуживание, оформить заказ или просмотреть список услуг и цены на них.</p>
        </div>
    </div>
    <div class="btn-group d-flex justify-content-center">
        <a href='<c:url value="/login" />' class="btn btn-primary mx-2">Вход для админа</a>
        <a href='<c:url value="/price" />' class="btn btn-primary mx-2">Список услуг</a>
        <a href='<c:url value="/product" />' class="btn btn-primary mx-2">Запчасти</a>
        <a href='<c:url value="/addorder" />' class="btn btn-primary mx-2">Оформить заказ</a>
        <a href='<c:url value="/create" />' class="btn btn-primary mx-2">Оставить заявку на обслуживание</a>
    </div>
</div></div><br><br>
    <div class="container">
        <div class="wrapper mt-5 text-center"><h2>Локация</h2>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d419.9209084262052!2d56.02816727431007!3d53.46075464995684!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43d803b0939e31b5%3A0xe5fc4a6ee680ae9d!2z0YPQuy4g0JrQvtC80LzRg9C90LDRgNC-0LIsIDE0LCDQmNGI0LjQvNCx0LDQuSwg0KDQtdGB0L8uINCR0LDRiNC60L7RgNGC0L7RgdGC0LDQvSwgNDUzMjAz!5e0!3m2!1sru!2sru!4v1700123538413!5m2!1sru!2sru" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div><br><br>

<footer class="footer fixed-bottom">
    <div class="container">
        <h3>Pilot Auto Repair</h3>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="footer-location-data">
                    <ul class="list-unstyled">
                        <li>
                            <ul class="list-icons">
                                <li>
                                    <p>Республика Башкортостан, г. Ишимбай<br>ул. Коммунаров 14</p>
                                </li>
                                <li>
                                    <p><a>+7 (927) 302-75-30</a><br><a>+7 (919) 146-58-29</a></p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
