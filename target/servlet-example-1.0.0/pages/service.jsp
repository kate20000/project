<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Appointments</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
        }

        .container {
            margin-top: 30px;
        }

        h2 {
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
    <h2>Service Appointments</h2>
    <p><a href='<c:url value="/index" />' class="btn btn-primary">My Clients</a></p>
    <table class="table table-bordered" id="appointments">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Car</th>
            <th>Year</th>
            <th>Date</th>
            <th>Time</th>
            <th>Service</th>

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

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
