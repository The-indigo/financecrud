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
    <title>Edit your profile</title>
</head>

<body>
    <!-- you are calling this url with the post mapping -->
    <form action="/editprofile/${customer.customerId}" method="POST">
        Email : <input type="text" name="email" value="${customer.email}" /> </br>
        Address : <input type="text" name="address" value="${customer.address}" /> </br>
        City : <input type="text" name="city" value="${customer.city}" /> </br>
        Phone : <input type="text" name="phone" value="${customer.phone}" /> </br>
        Postal Code : <input type="text" name="postalcode" value="${customer.postalcode}" /> </br>
        <input type="submit" name="Edit" />
    </form>
    <!-- <a href="">Back to Home</a> -->

</body>

</html>