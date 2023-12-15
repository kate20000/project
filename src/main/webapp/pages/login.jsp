<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Авторизация</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Optional: Set a background color for the body */
        }

        .login-container {
            border: 1px solid #000;
            margin-top: 10%;
            padding: 20px;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
            background-color: #fff;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .error-message {
            color: red;
        }

        .submit-btn {
            color: #f4f6f8;
        }
    </style>
</head>
<body>
<div class="login-container">
    <form action="" method="post">
        <div class="container">
            <div class="row form-group">
                <div class="col-lg-4">
                    <span>Логин</span>
                    <input name="login" class="form-control" id="login" type="text"/>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-lg-4">
                    <span>Пароль</span>
                    <input name="password" class="form-control" id="password" type="text"/>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <span class="error-message">${requestScope.errorText}</span>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <input type="submit" class="btn btn-primary submit-btn">
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
