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
    <link href="${pageContext.request.contextPath}/resources/css/addaccount.css" rel="stylesheet" />
    <title>
        <c:choose>
            <c:when test="${!empty account}">
                Edit Account
            </c:when>
            <c:otherwise>
                Add an account
            </c:otherwise>
        </c:choose>

    </title>
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
                    <c:choose>
                        <c:when test="${!empty account}">
                            <h3>Edit Account</h3>
                            <p>Enter the latest account information</p>

                        </c:when>
                        <c:otherwise>
                            <h3>Add an account</h3>
                            <p>Create your account</p>

                        </c:otherwise>
                    </c:choose>
                </div>
                <c:choose>
                    <c:when test="${!empty account}">

                        <div class="form">

                            <form action="/editaccount/${account.accountNumber}" method="POST">
                                <div class="radio-btns">

                                    <input type="radio" id="savings" name="accounttype" required value="1">
                                    <label for="savings">Savings</label>
                                    <input type="radio" id="chequeing" name="accounttype" value="2">
                                    <label for="chequeing">Chequeing</label>
                                    <input type="radio" id="premium" name="accounttype" value="3">
                                    <label for="premium">Premium</label>
                                </div>

                                <div class="input-div">
                                    <label for="customerid">Customer ID<span class="star">*</span>:</label> </br>
                                    <input type="text" id="customerid" name="customerid" value="${account.customerId}"
                                        readonly />
                                </div>

                                <div class="input-div">
                                    <label for="balance">Balance<span class="star">*</span>:</label> </br>
                                    <input type="text" id="balance" name="balance" value="${account.balance}"
                                        required />
                                </div>
                                <div class="input-div">
                                    <label for="overdraft"> Overdraft Limit<span class="star">*</span>:</label>
                                    </br>

                                    <input type="text" id="overdraft" name="overdraft" value="${account.overdraftLimit}"
                                        required />
                                </div>

                                <button class="button submit-btn" type="submit" name="Edit">Edit Account</button>
                            </form>


                        </div>

                    </c:when>
                    <c:otherwise>
                        <div class="form">

                            <form action="/addaccount/${customerId}" method="POST">
                                <div class="radio-btns">

                                    <input type="radio" id="savings" name="accounttype" required value="1">
                                    <label for="savings">Savings</label>
                                    <input type="radio" id="chequeing" name="accounttype" value="2">
                                    <label for="chequeing">Chequeing</label>
                                    <input type="radio" id="premium" name="accounttype" value="3">
                                    <label for="premium">Premium</label>
                                </div>

                                <div class="input-div">
                                    <label for="customerid">Customer ID<span class="star">*</span>:</label> </br>
                                    <input type="text" id="customerid" name="customerid" value="${customerId}"
                                        readonly />
                                </div>

                                <!-- <div class="input-div">
                                    <label for="balance">Balance<span class="star">*</span>:</label> </br>
                                    <input type="text" id="balance" name="balance" value="${account.balance}"
                                        required />
                                </div>
                                <div class="input-div">
                                    <label for="overdraft"> Overdraft Limit<span class="star">*</span>:</label>
                                    </br>

                                    <input type="text" id="overdraft" name="overdraft" value="${account.overdraftLimit}"
                                        required />
                                </div> -->

                                <button class="button submit-btn" type="submit" name="Add">Add Account</button>

                            </form>


                        </div>
                    </c:otherwise>
                </c:choose>
            </div>



        </section>



    </main>

</body>

</html>