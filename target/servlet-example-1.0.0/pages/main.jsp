<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AutoService Home</title>
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
    <h2>Welcome to Our AutoService</h2>
    <div class="btn-group">
        <a href='<c:url value="/login" />' class="btn btn-success">Admin</a>
        <a href='<c:url value="/price" />' class="btn btn-success">Services List</a>
        <a href='<c:url value="/create" />' class="btn btn-success">Create Service Appointment</a>
    </div>
</div>
</body>
</html>
