<%--
  Created by IntelliJ IDEA.
  User: tom
  Date: 25/09/2023
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dodaj Opinię</title>
</head>
<body>
<h1>Dodaj Opinię</h1>

<form action="<c:url value='/reviews/add/${beer.id}' />" method="post" modelAttribute="review">
    <label for="content">Treść opinii:</label>
    <textarea id="content" name="content" rows="4" required></textarea>
    <br>

    <label for="rating">Ocena:</label>
    <input type="number" id="rating" name="rating" min="1" max="10" required>
    <br>

    <button type="submit">Dodaj Opinię</button>
</form>

<a href="<c:url value='/beers/details/${beer.id}' />">Powrót do szczegółów piwa</a>
</body>
</html>

