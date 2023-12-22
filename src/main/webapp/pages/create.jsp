<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Форма для записи</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
        }

        .row {
            margin-bottom: 15px;
        }

        h2 {
            color: #657d9c;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #657d9c;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #657d9c;
        }

        p {
            color: red;
            margin: 0;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <h2>Создание заявки</h2>
    </div>
    <div class="row">
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
        <p><%= errorMessage %></p>
        <% } %>
    </div>
    <form method="post">
        <div class="row">
            <label for="phone">Телефон</label>
            <input type="tel" pattern="\+7\s?\(?\d{3}\)?\s?\d{3}[-]?\d{2}[-]?\d{2}" placeholder="+7 (900) 000-00-00" name="phone" class="form-control" id="phone" required>
        </div>
        <div class="row">
            <label for="name">Имя</label>
            <input type="text" name="name" class="form-control" id="name">
        </div>
        <div class="row">
            <label for="problem">Услуга (проблема)</label>
            <input type="text" name="problem" class="form-control" id="problem">
        </div>
        <div class="row">
            <label for="car">Машина</label>
            <input type="text" class="form-control" id="car" name="car">
        </div>
        <div class="row">
            <label for="year">Год выпуска</label>
            <input type="number" value="2000" name="year" class="form-control" id="year">
        </div>
        <div class="row">
            <label for="date">Дата</label>
            <input type="date" name="date" class="form-control" id="date">
        </div>
        <div class="row">
            <label for="time">Время</label>
            <input type="time" name="time" min="10:00" max="18:00" value="10:00" class="form-control" id="time">
        </div>
        <div class="row">
            <input type="submit" value="Отправить">
        </div>
    </form>
    <script>
        var currentDate = new Date();
        var dateString = currentDate.toISOString().slice(0,10);
        document.getElementById('date').value = dateString;
        document.getElementById('date').min = dateString;
    </script>
</div>
</body>
</html>
