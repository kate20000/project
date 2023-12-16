<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Новый заказ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f8f8;
        }

        .form-container {
            width: 50%;
            margin: 10% auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #333;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #657d9c;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #657d9c;
        }
    </style>
</head>
<body>
<div class="container form-container">
    <h3>Новый заказ</h3>
    <form method="post">
        <div class="form-group">
            <label for="product">Запчасть</label>
            <input type="text" class="form-control" id="product" name="product" required>
        </div>
        <div class="form-group">
            <label for="amount">Количество</label>
            <input type="text" class="form-control" id="amount" name="amount" required>
        </div>
        <div class="form-group">
        <label for="phone">Телефон</label>
        <input type="tel" pattern="\+7\s?\(?\d{3}\)?\s?\d{3}[-]?\d{2}[-]?\d{2}" placeholder="+7 (900) 000-00-00" name="phone" class="form-control" id="phone" required>
        </div>
        <button type="submit" class="btn btn-primary">Оформить</button>
    </form>
</div>
</body>
</html>
