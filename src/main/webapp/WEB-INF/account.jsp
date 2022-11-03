<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Monoton&family=Quicksand:wght@400;500;700&display=swap"
        rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/account.css" rel="stylesheet" />
    <title>Welcome, ${customer.username}</title>
</head>

<body>
    <div class="logo-text">
        <h1>My Wallet!</h1>
    </div>
    <main class="main">

        <h1>Welcome To Your profile</h1>
        <p class="profile-p">${customer.firstname}</p>

        <h1 class="accounts-h1">Accounts</h1>
        <c:choose>
            <c:when test="${!empty accountList}">
                <c:forEach var="acc" items="${accountList}">
                    <div class="account-div">
                        <c:choose>
                            <c:when test="${acc.accountTypeCode==1}">
                                <aside class="account-card savings-account-card">
                            </c:when>
                            <c:when test="${acc.accountTypeCode==2}">
                                <aside class="account-card chequeing-account-card">
                            </c:when>
                            <c:when test="${acc.accountTypeCode==3}">
                                <aside class="account-card premium-account-card">
                            </c:when>
                        </c:choose>
                        <!-- <aside class="account-card"> -->
                        <div class="card-header">
                            <div class="logo-text">
                                <h1>My Wallet!</h1>
                            </div>
                            <p>${customer.firstname} ${customer.lastname}</p>
                        </div>
                        <div class="card-chip-div">
                            <img src="${pageContext.request.contextPath}/resources/images/chip.png" />
                        </div>

                        <div class="card-number-img-div">
                            <c:set var="myVar">${acc.accountNumber}</c:set>
                            <p><span class="card-number-span">${fn:substring(myVar, 0,3)} </span> <span
                                    class="card-number-span">${fn:substring(myVar, 3,6)} </span>
                                <span class="card-number-span">${fn:substring(myVar, 6,11)} </span> </p>
                            <div class="card-img-div">
                                <img src="${pageContext.request.contextPath}/resources/images/fishing.png" />
                            </div>
                        </div>

                        <div class="card-expiry">
                            <p>10/12</p>
                        </div>

                        </aside>
                        <aside class="account-details">
                            <h3>Account details</h3>
                            <c:choose>
                                <c:when test="${acc.accountTypeCode==1}">
                                    <p>Type: Savings Account</p>
                                </c:when>
                                <c:when test="${acc.accountTypeCode==2}">
                                    <p>Type: Chequeing Account</p>
                                </c:when>
                                <c:when test="${acc.accountTypeCode==3}">
                                    <p>Type: Premium Account</p>
                                </c:when>
                            </c:choose>
                            <p>Account Balance: ${acc.balance}</p>
                            <div class="account-details-button">
                                <a href="/edit/${acc.accountNumber}">Edit Account</a>
                                <form action="/deleteaccount/${acc.accountNumber}" method="post">
                                    <button type="submit">Delete Account</button>
                                </form>
                            </div>

                        </aside>

                    </div>

                </c:forEach>
            </c:when>
            <c:otherwise>
                <p class="no-account-p">You currently have no account opened</p>
            </c:otherwise>
        </c:choose>


        <a class="account-links" href="editprofile/${customer.customerId}">Edit profile</a>

        <a class="account-links" href="/addaccount/${customer.customerId}">Add Account</a>
    </main>

</body>

</html>