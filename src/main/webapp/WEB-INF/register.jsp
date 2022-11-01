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
    <link href="${pageContext.request.contextPath}/resources/css/register.css" rel="stylesheet" />
    <title>Register</title>
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

            <div class="form-signintext-div">
                <div class="right-area-signin-text">
                    <h3>Register. </h3>
                    <p>Register to experience all possibilitiies.</p>
                </div>
                <div class="form">
                    <form action="register" method="POST">
                        <div class="form-div">
                            <div class="form-div-1">
                                <div class="input-div">
                                    <label for="username">Username<span class="star">*</span>:</label> </br>
                                    <input type="text" id="username" name="username" required />
                                </div>

                                <div class="input-div">
                                    <label for="firstname">First Name<span class="star">*</span>:</label> </br>
                                    <input type="text" id="firstname" name="firstname" required />
                                </div>
                                <div class="input-div">
                                    <label for="lastname">Last Name<span class="star">*</span>:</label> </br>
                                    <input type="text" id="lastname" name="lastname" required />
                                </div>
                                <div class="input-div">
                                    <label for="email">Email<span class="star">*</span>:</label> </br>
                                    <input type="email" name="email" required />
                                </div>
                                <div class="input-div">
                                    <label for="password">Password<span class="star">*</span>:</label> </br>
                                    <input type="password" id="password" name="password" required />
                                </div>
                            </div>
                            <div class="form-div-2">
                                <div class="input-div">
                                    <label for="repassword">Password Just To Be Sure<span class="star">*</span>:</label>
                                    </br>
                                    <input type="password" id="repassword" name="repassword" required />
                                </div>
                                <div class="input-div">
                                    <label for="address">Address<span class="star">*</span>:</label> </br>
                                    <input type="text" id="address" name="address" required />
                                </div>

                                <div class="input-div">
                                    <label for="city">City<span class="star">*</span>:</label> </br>
                                    <input type="text" id="city" name="city" required />
                                </div>
                                <div class="input-div">
                                    <label for="phone">Phone<span class="star">*</span>:</label> </br>
                                    <input type="text" id="phone" name="phone" required />
                                </div>
                                <div class="input-div">
                                    <label for="postalcode">Postal Code<span class="star">*</span>:</label> </br>
                                    <input type="text" id="postalcode" name="postalcode" required />
                                </div>
                            </div>

                        </div>
                        <div class="button-div">
                            <button class="button submit-btn" type="submit" name="register">Register</button>
                        </div>

                    </form>

                    <div class="login-instead">
                        <a href="/">Login instead</a>
                    </div>

                </div>

            </div>



        </section>



    </main>

</body>

</html>