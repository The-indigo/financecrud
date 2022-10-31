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
    <title>Register</title>
</head>

<body>
    <form action="register" method="POST">
        Username: <input type="text" name="username" required /> </br>
        First Name : <input type="text" name="firstname" required /> </br>
        Last Name : <input type="text" name="lastname" required /> </br>
        Email : <input type="email" name="email" required /> </br>
        Password : <input type="password" name="password" required /></br>
        Password Just To Be Sure : <input type="password" name="repassword" required /> </br>
        Address : <input type="text" name="address" required /> </br>
        City : <input type="text" name="city" required /> </br>
        Phone : <input type="text" name="phone" required /> </br>
        Postal Code : <input type="text" name="postalcode" required /> </br>
        <input type="submit" name="Register" />
    </form>
    <a href="/">Login instead</a>

</body>

</html>