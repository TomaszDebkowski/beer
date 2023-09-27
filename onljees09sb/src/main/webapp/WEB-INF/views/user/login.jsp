<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logowanie</title>
</head>
<body>
<h1>Logowanie</h1>

<form action="/users/login" method="post">
    <label for="username">Nazwa użytkownika:</label>
    <input type="text" id="username" name="username" required><br>

    <label for="password">Hasło:</label>
    <input type="password" id="password" name="password" required><br>

    <input type="submit" value="Zaloguj">
</form>

<a href="/users/register">Zarejestruj się</a>
</body>
</html>
