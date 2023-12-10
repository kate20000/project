<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clients</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        body {
            margin: 5%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
        }

        .btn-group {
            display: flex;
        }

        .btn-group a, .btn-group form {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div>
    <h2>Our Services</h2>
    <table>
        <thead>
        <tr>
            <th>Code</th>
            <th>Service</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="services" items="${services}">
            <tr>
                <td align="center">${services.id}</td>
                <td align="center">${services.service}</td>
                <td align="center">${services.price}</td>
                <td class="btn-group"></td>
            </tr>
        </c:forEach>

        </tbody>
    </table><p><a href='<c:url value="/create" />' class="btn btn-primary">Create service appointment</a></p>
</div>
</body>
</html>