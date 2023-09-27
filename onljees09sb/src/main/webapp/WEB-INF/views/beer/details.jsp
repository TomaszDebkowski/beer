<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Szczegóły Piwa</title>
<%--    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css" />">--%>
</head>
<body>
<h1>Szczegóły Piwa</h1>

<table>
    <tr>
        <th>ID</th>
        <td>${beer.id}</td>
    </tr>
    <tr>
        <th>Nazwa</th>
        <td>${beer.name}</td>
    </tr>
    <tr>
        <th>Browar</th>
        <td>${beer.brewery}</td>
    </tr>
    <tr>
        <th>Opis</th>
        <td>${beer.description}</td>
    </tr>
    <tr>
        <th>Ocena</th>
        <td>${beer.rating}</td>
    </tr>
</table>

<a href="/beers/">Powrót do listy piw</a>
</body>
</html>
