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
    <title>
        <c:choose>
            <c:when test="${!empty account}">
                Edit Account
            </c:when>
            <c:otherwise>
                Add an account
            </c:otherwise>

    </title>
</head>

<body>
    <c:choose>
        <c:when test="${!empty account}">
            <form action="/editaccount/${account.accountNumber}" method="POST">
                <input type="radio" id="savings" name="accounttype" required value="1">
                <label for="savings">Savings</label>
                <input type="radio" id="chequeing" name="accounttype" value="2">
                <label for="chequeing">Chequeing</label>
                <input type="radio" id="premium" name="accounttype" value="3">
                <label for="premium">Premium</label>
                Customer ID : <input type="text" name="customerid" value="${account.customerId}" readonly /> </br>
                Balance : <input type="text" name="balance" value="${account.balance}" /> </br>
                Overdraft Limit : <input type="text" name="overdraft" value="${account.overdraftLimit}" /> </br>
                <input type="submit" name="Edit Account" />
            </form>
        </c:when>
        <c:otherwise>
            <form action="/addaccount/${customerId}" method="POST">
                <input type="radio" id="savings" name="accounttype" required value="1">
                <label for="savings">Savings</label>
                <input type="radio" id="chequeing" name="accounttype" value="2">
                <label for="chequeing">Chequeing</label>
                <input type="radio" id="premium" name="accounttype" value="3">
                <label for="premium">Premium</label>
                Customer ID : <input type="text" name="customerid" value="${customerId}" readonly /> </br>
                <input type="submit" name="Add Account" />
            </form>
        </c:otherwise>
    </c:choose>


    <!-- <a href="">Back to Home</a> -->

</body>

</html>