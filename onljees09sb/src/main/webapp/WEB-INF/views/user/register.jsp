<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rejestracja Użytkownika</title>
</head>
<body>
<h1>Rejestracja Użytkownika</h1>

<form action="/users/register" method="post">
    <label for="username">Nazwa użytkownika:</label>
    <input type="text" id="username" name="username" required><br>

    <label for="password">Hasło:</label>
    <input type="password" id="password" name="password" required><br>

    <label for="email">E-mail:</label>
    <input type="email" id="email" name="email" required><br>

    <input type="submit" value="Zarejestruj">
</form>

<a href="/users/login">Zaloguj się</a>
</body>
</html>
