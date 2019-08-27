<%--
  Created by IntelliJ IDEA.
  User: vishnu
  Date: 27/08/19
  Time: 5:07 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Evento - All Events</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <a class="navbar-brand mr-auto" href="#">Evento</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/events/all">All Events</a>
                </li>
                </li>
            </ul>
        </div>
    </nav>
</header>
<div class="container">
    <div class="card">
        <div class="card-body">
            <h2>Event List</h2>
        <ul class="list-group">
            <c:forEach var="event" items="${list}">
                <li class="list-group-item list-group-item-action"><a class="d-flex justify-content-between align-items-center" href="/events/detail?name=${event.name}">${event.name} <span class="badge badge-primary badge-pill">${event.price}</span></a></li>
            </c:forEach>
        </ul>
        </div>
    </div>
</div>
</body>
</html>