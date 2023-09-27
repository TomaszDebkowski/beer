<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dodawanie Stylu Piwa</title>
</head>
<body>
<h1>Dodawanie Stylu Piwa</h1>

<form action="/beerstyles/add" method="post">
    <label for="name">Nazwa:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="description">Opis:</label>
    <textarea id="description" name="description" rows="4" cols="50"></textarea><br>

    <input type="submit" value="Dodaj">
</form>

<a href="/beerstyles/">Powrót do listy stylów piw</a>
</body>
</html>
