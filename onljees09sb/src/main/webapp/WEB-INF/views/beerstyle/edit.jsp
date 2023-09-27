<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edycja Stylu Piwa</title>
</head>
<body>
<h1>Edycja Stylu Piwa</h1>

<form action="/beerstyles/edit/${beerStyle.id}" method="post">
    <label for="name">Nazwa:</label>
    <input type="text" id="name" name="name" value="${beerStyle.name}" required><br>

    <label for="description">Opis:</label>
    <textarea id="description" name="description" rows="4" cols="50">${beerStyle.description}</textarea><br>

    <input type="submit" value="Zapisz zmiany">
</form>

<a href="/beerstyles/">Powrót do listy stylów piw</a>
</body>
</html>
