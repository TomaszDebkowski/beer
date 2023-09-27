<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edytuj Piwo</title>
</head>
<body>
<h1>Edytuj Piwo</h1>

<form action="<c:url value='/beers/edit/${beer.id}' />" method="post">
    <label for="name">Nazwa:</label>
    <input type="text" id="name" name="name" value="${beer.name}" required>
    <br>

    <label for="brewery">Browar:</label>
    <input type="text" id="brewery" name="brewery" value="${beer.brewery}" required>
    <br>

    <label for="description">Opis:</label>
    <textarea id="description" name="description" rows="4" required>${beer.description}</textarea>
    <br>

    <label for="rating">Ocena:</label>
    <input type="number" id="rating" name="rating" min="0" max="10" step="0.1" value="${beer.rating}" required>
    <br>

    <button type="submit">Zapisz</button>
</form>

<a href="/beers">Powrót do listy piw</a>
</body>
</html>