<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edycja Profilu Użytkownika</title>
</head>
<body>
<h1>Edycja Profilu Użytkownika</h1>

<form action="/users/profile/${user.id}/edit" method="post">
    <label for="username">Nazwa użytkownika:</label>
    <input type="text" id="username" name="username" value="${user.username}" required><br>

    <label for="email">E-mail:</label>
    <input type="email" id="email" name="email" value="${user.email}" required><br>

    <!-- Dodaj inne pola formularza do edycji zgodnie z modelem User -->

    <input type="submit" value="Zapisz zmiany">
</form>

<a href="/users/profile/${user.id}">Powrót do Profilu</a>
</body>
</html>
