<%-- 
    Document   : success
    Created on : Sep 1, 2017, 1:51:52 PM
    Author     : TinaCH
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
 <c:import url="/includes/header.html"/> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TOBA Success</title>
    </head>
    <body>
        <nav>
            <a href="index.jsp">Home</a><br>
            <a href="login.jsp">Login</a><br>
            <a href="account_activity.jsp">Account Activity</a><br>
            <a href="transaction.jsp">Transactions</a><br>
            <a href ="new_customer.jsp">New Customer Sign Up page</a><br>
            <a href ="password_reset.jsp">Reset password page</a><br>
        </nav>
        <h1>Your account has been successfully created thank you.</h1>
        
        <p>Here is all the information for your enrollment</p>
        <label>First Name:</label>
        <span>${user.firstName}</span><br>
        <label>Last Name:</label>
        <span>${user.lastName}</span><br>
        <label>Phone Number:</label>
        <span>${user.phone}</span><br>
        <label>Address:</label>
        <span>${user.address}</span><br>
        <label>City:</label>
        <span>${user.city}</span><br>
        <label>State:</label>
        <span>${user.state}</span><br>
        <label>Zip Code:</label>
        <span>${user.zipcode}</span><br>
        <label>Email:</label>
        <span>${user.email}</span><br>
        <label>Username:</label>
        <span>${user.username}</span><br>
        <label>Password:</label>
        <span>${user.password}</span><br>
        
        <c:import url="/includes/footer.jsp"/>
    </body>
</html>
