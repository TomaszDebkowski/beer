<%--
  Created by IntelliJ IDEA.
  User: tom
  Date: 25/09/2023
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Dodaj Producenta</title>
</head>
<body>
<h1>Dodaj Producenta</h1>

<form action="/producers" method="post">
  <label for="name">Nazwa:</label>
  <input type="text" id="name" name="name" required>
  <br>

  <label for="country">Kraj:</label>
  <input type="text" id="country" name="country">
  <br>

  <button type="submit">Dodaj Producenta</button>
</form>

<a href= value="/producers/" />">Powrót do listy producentów</a>
</body>
</html>
