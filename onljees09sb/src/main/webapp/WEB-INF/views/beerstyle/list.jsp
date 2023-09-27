<%--
  Created by IntelliJ IDEA.
  User: tom
  Date: 26/09/2023
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista Stylów Piwa</title>
</head>
<body>
<h1>Lista Stylów Piwa</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Nazwa</th>
        <th>Opis</th>
    </tr>
    <c:forEach items="${beerStyles}" var="beerStyle">
        <tr>
            <td>${beerStyle.id}</td>
            <td>${beerStyle.name}</td>
            <td>${beerStyle.description}</td>
        </tr>
    </c:forEach>
</table>

<a href="/beerstyles/add">Dodaj nowy styl piwa</a>
</body>
</html>
