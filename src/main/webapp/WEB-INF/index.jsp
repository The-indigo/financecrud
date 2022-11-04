<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Monoton&family=Quicksand:wght@400;500;700&display=swap"
        rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet" />
    <title>Login</title>
</head>

<body>
    <main class="main">
        <div class="left-area">
            <div class="logo-text">
                <h1>My Wallet!</h1>
            </div>
            <div class="product-description-div">
                <div class="computer-img-div">
                    <img src="${pageContext.request.contextPath}/resources/images/computer.png" />
                </div>
                <div class="left-area-text">
                    <h2>Banking Anywhere, Anytime</h2>
                    <p>Control your account(s) with a simple click</p>
                </div>
            </div>

        </div>
        <section class="right-area">
            <div class="nav-btn">
                <a class="button register-btn" href="signup">Register</a>
            </div>
            <div class="form-signintext-div">
                <div class="right-area-signin-text">
                    <h3>Sign In. </h3>
                    <p>Sign in to access your account(s)</p>
                </div>
                <div class="form">
                    <form action="login" method="POST">

                        <c:if test="${error!=null}">
                            <p class="error">${error}</p>
                        </c:if>


                        <div class="input-div">
                            <label for="email">Email<span class="star">*</span>:</label> </br>
                            <input type="text" id="email" name="email" required />
                        </div>
                        <div class="input-div">
                            <label for="password">Password<span class="star">*</span>:</label> </br>
                            <input type="password" id="password" name="password" required />
                        </div>
                        <button class="button submit-btn" type="submit" name="Login">Submit</button>
                    </form>
                </div>

            </div>



        </section>



    </main>

</body>

</html>