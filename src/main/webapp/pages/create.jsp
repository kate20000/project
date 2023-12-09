<!DOCTYPE html>
<html>
<head>
    <title>Form for service appointment</title>
    <style>
        .row {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="row">
    <h2>Create Appointment</h2>
</div>
<div class="row">
    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    <% if (errorMessage != null) { %>
    <p style="color: red;"><%= errorMessage %></p>
    <% } %>
</div>
<form method="post">
    <div class="row">
        <label for="phone">Phone</label>
        <input type="tel" pattern="\+7\s?\(?\d{3}\)?\s?\d{3}[-]?\d{2}[-]?\d{2}" placeholder="+7 (900) 000-00-00" name="phone" class="form-control" id="phone" required>
    </div>
    <div class="row">
        <label for="name" class="form-label">Name</label>
        <input type="text" name="name" class="form-control" id="name">
    </div>
    <div class="row">
        <label for="problem" class="form-label">Service</label>
        <input type="text" name="problem" class="form-control" id="problem">
    </div>
    <div class="row">
        <label for="car" class="form-label">Car</label>
        <input type="text" class="form-control" id="car" name="car">
    </div>
    <div class="row">
        <label for="year" class="form-label">Year of car</label>
        <input type="number" value="2000" name="year" class="form-control" id="year">
    </div>
    <div class="row">
        <label for="date" class="form-label">Date</label>
        <input type="date" value="2023-07-22" name="date" class="form-control" id="date">
    </div>
    <div class="row">
        <label for="time">Time</label>
        <input type="time" name="time" min="10:00" max="18:00" value="10:00" class="form-control" id="time">
    </div>
    <div class="row">
        <input type="submit" value="Send">
    </div>
</form>
</body>
</html>
