<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Редактирование</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <style>
        body {
            margin: 5%;
        }

        .edit-container {
            border: 1px solid #000;
            padding: 20px;
            margin-top: 5%;
            margin-left: 5%;
            width: 50%;
            background-color: #fff; /* Optional: Set a background color for the container */
        }

        .form-group {
            margin-bottom: 20px;
        }

        .submit-btn {
            color :#657d9c;
        }
    </style>
</head>
<body>
<div style="
border: black;
margin-top: 5%;
margin-left: 5%;
">
<h3>Редактирование данных</h3>
<form method="post">
    <input type="hidden" class="form-control" value="${clients.id}" name="id" />
    <div class="form-group">
        <label>Телефон</label>
        <input name="phone" class="form-control" value="${clients.phone}" />
    </div>
    <div class="form-group">
        <label>Имя</label>
        <input name="name" value="${clients.name}" type="text" class="form-control" />
    </div>
    <input type="submit" class="btn btn-primary submit-btn" value="Сохранить" />
</form>
</div>
</body>
</html>