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
    <title>Login</title>
</head>

<body>
    <form action="login" method="POST">
        Email : <input type="text" name="email" required /> </br>
        Password : <input type="password" name="password" required /></br>
        <input type="submit" name="Login" />
    </form>
    <a href="signup">New here? Register instead</a>
</body>

</html>