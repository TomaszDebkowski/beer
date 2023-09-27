<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dodaj Piwo</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css" />">
</head>
<body>
<h1>Dodaj Piwo</h1>

<form action="/beers/add" method="post">
    <label for="name">Nazwa:</label>
    <input type="text" id="name" name="name" required>
    <br>

    <label for="brewery">Browar:</label>
    <input type="text" id="brewery" name="brewery" required>
    <br>

    <label for="description">Opis:</label>
    <textarea id="description" name="description" rows="4" required></textarea>
    <br>

    <label for="rating">Ocena:</label>
    <input type="number" id="rating" name="rating" min="0" max="10" step="0.1" required>
    <br>

    <button type="submit">Dodaj</button>
</form>
</body>
</html>
