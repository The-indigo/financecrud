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
    <title>Add an account</title>
</head>

<body>
    <form action="/addaccount" method="POST">
        <input type="radio" id="savings" name="accounttype" required value="1">
        <label for="savings">Savings</label>
        <input type="radio" id="chequeing" name="accounttype" value="2">
        <label for="chequeing">Chequeing</label>
        <input type="radio" id="premium" name="accounttype" value="3">
        <label for="premium">Premium</label>
        Customer ID : <input type="text" name="customerid" value="${customerId}" readonly /> </br>
        <input type="submit" name="Edit" />
    </form>
    <!-- <a href="">Back to Home</a> -->

</body>

</html>