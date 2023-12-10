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
    <h2>Clients List</h2>
    <p><a href='<c:url value="/add" />' class="btn btn-primary">Add new client</a></p>
    <table>
        <thead>
        <tr>
            <th>Phone</th>
            <th>Name</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="clients" items="${clients}">
            <tr>
                <td>${clients.phone}</td>
                <td>${clients.name}</td>
                <td class="btn-group">
                    <a href='<c:url value="/edit?id=${clients.id}" />' class="btn btn-info">Edit</a>
                    <form method="post" action='<c:url value="/delete" />' style="display:inline;">
                        <input type="hidden" name="id" value="${clients.id}">
                        <input type="submit" value="Delete" class="btn btn-danger">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
