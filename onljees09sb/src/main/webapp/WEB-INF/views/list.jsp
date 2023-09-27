<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista Piw</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css" />">
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
                <a href="<c:url value='/beers/add/' />">Dodaj Piwo</a>
                <a href="<c:url value='/beers/edit/${beer.id}' />">Edytuj</a>
                <a href="<c:url value='/beers/delete/${beer.id}' />">Usuń</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="<c:url value='/beers/add/' />">Dodaj Piwo</a>


</body>
</html>
