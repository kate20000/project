<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Редактирование</title>
</head>
<body>
<h3>Редактирование заявки</h3>
<form method="post">
    <input type="hidden" value="${clients.id}" name="id" />
    <label>Phone</label><br>
    <input name="phone" value="${clients.phone}" /><br><br>
    <label>Name</label><br>
    <input name="name" value="${clients.name}" type="text" min="100" /><br><br>
    <input type="submit" value="Send" />
</form>
</body>
</html>