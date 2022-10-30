<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet" />
    <title>Welcome, {customer.username}</title>
</head>

<body>

    <h1>Welcome To Your profile</h1>
    <p>${customer.firstname}</p>
    <p>${customer.email}</p>
    <p>${customer.lastname}</p>
    <p>${customer.phone}</p>
    <p>${customer.city}</p>

    <a href="editprofile/${customer.customerId}">Edit profile</a>
    <a href="addaccount/${customer.customerId}">Add Account</a>
</body>

</html>