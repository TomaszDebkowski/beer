<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista Producentów</title>
</head>
<body>
<h1>Lista Producentów</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nazwa</th>
        <th>Kraj</th>
        <th>Opis</th>
    </tr>
    <c:forEach items="${producers}" var="producer">
        <tr>
            <td>${producer.id}</td>
            <td>${producer.name}</td>
            <td>${producer.country}</td>
            <td>${producer.description}</td>
        </tr>
    </c:forEach>
</table>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nazwa</th>
        <th>Kraj</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${producers}" var="producer">
        <tr>
            <td>${producer.id}</td>
            <td>${producer.name}</td>
            <td>${producer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

    <a href="/producers/add">Dodaj nowego producenta</a>
</body>
</html>
