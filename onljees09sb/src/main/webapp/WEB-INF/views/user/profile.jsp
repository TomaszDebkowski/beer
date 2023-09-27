<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profil Użytkownika</title>
</head>
<body>
<h1>Profil Użytkownika</h1>

<p>Nazwa użytkownika: ${user.username}</p>
<p>E-mail: ${user.email}</p>

<!-- Dodaj inne informacje o użytkowniku -->

<a href="/users/profile/${user.id}/edit">Edytuj Profil</a>
</body>
</html>
