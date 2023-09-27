<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista Opinii</title>
</head>
<body>
<h1>Lista Opinii</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Treść</th>
        <th>Ocena</th>
        <th>Piwo</th>
    </tr>
    <c:forEach items="${reviews}" var="review">
        <tr>
            <td>${review.id}</td>
            <td>${review.content}</td>
            <td>${review.rating}</td>
            <td>${review.beer.name}</td>
        </tr>
    </c:forEach>
</table>
<a href="/reviews/add">Dodaj nową opinię</a>
</body>
</html>
