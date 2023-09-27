<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista Piw</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .header {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }
    </style>
</head>
<body>
<h1>Lista Piw</h1>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nazwa</th>
        <th>Browar</th>
        <th>Opis</th>
        <th>Ocena</th>
        <th>Akcje</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${beers}" var="beer">
        <tr>
            <td>${beer.id}</td>
            <td>${beer.name}</td>
            <td>${beer.brewery}</td>
            <td>${beer.description}</td>
            <td>${beer.rating}</td>
            <td>
                <a href="/beers/edit/${beer.id}">Edytuj</a>
                <a href="/beers/delete/${beer.id}">Usuń</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="?sort=rating">Sortuj po najwyższej ocenie</a>
<a href="/beers/add">Dodaj Piwo</a>

<form action="/beers" method="get">
    <input type="text" name="brewery" placeholder="Nazwa browaru">
    <button type="submit">Szukaj</button>
</form>
</body>

</html>
<footer>

<p></p>
</footer>