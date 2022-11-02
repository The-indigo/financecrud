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
    <link href="${pageContext.request.contextPath}/resources/css/edit.css" rel="stylesheet" />
    <title>Edit your profile</title>
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
            <!-- <div class="nav-btn">
                <a class="button register-btn" href="signup">Register</a>
            </div> -->
            <div class="form-signintext-div">
                <div class="right-area-signin-text">
                    <h3>Edit your Profile. </h3>
                    <p>Enter the latest changes about you</p>
                </div>
                <div class="form">
                    <form action="/editprofile/${customer.customerId}" method="POST">
                        <div class="input-div">
                            <label for="email">Email<span class="star">*</span>:</label> </br>
                            <input type="text" id="email" name="email" value="${customer.email}" required />
                        </div>
                        <div class="input-div">
                            <label for="address">Address<span class="star">*</span>:</label> </br>
                            <input type="text" id="address" name="address" value="${customer.address}" required />
                        </div>
                        <div class="input-div">
                            <label for="city">City<span class="star">*</span>:</label>
                            </br>
                            <input type="text" id="city" name="city" value="${customer.city}" required />
                        </div>

                        <div class="input-div">
                            <label for="phone">Phone<span class="star">*</span>:</label>
                            </br>
                            <input type="text" id="phone" name="phone" value="${customer.phone}" required />
                        </div>
                        <div class="input-div">
                            <label for="postalcode">Postal Code<span class="star">*</span>:</label>
                            </br>
                            <input type="text" id="postalcode" name="postalcode" value="${customer.postalcode}"
                                required />
                        </div>
                        <button class="button submit-btn" type="submit" name="Edit">Edit</button>
                    </form>
                </div>

            </div>



        </section>



    </main>

</body>

</html>