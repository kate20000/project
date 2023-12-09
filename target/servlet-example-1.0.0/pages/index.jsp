<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clients</title>
</head>
<body>
<h2>Clients List</h2>
<p><a href='<c:url value="/add" />'>Add new client</a></p>
<table>
    <tr><th>Phone</th><th>Name</th><th></th></tr>
    <c:forEach var="clients" items="${clients}">
        <tr>
            <td>${clients.phone}</td>
            <td>${clients.name}</td>
            <td>
                <a href='<c:url value="/edit?id=${clients.id}" />'>Edit</a> |
                <form method="post" action='<c:url value="/delete" />' style="display:inline;">
                    <input type="hidden" name="id" value="${clients.id}">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
