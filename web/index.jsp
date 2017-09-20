<%-- 
    Document   : index
    Created on : Sep 18, 2017, 4:28:36 PM
    Author     : TinaCH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
        <c:import url="/includes/header.html"/>
        <title>TOBA </title>
    </head>
    <body>
        <h1>TOBA Bank</h1>
        <p>Titan Online Banking</p>
        <p>Banking for everyone that is online</p>
        <nav>
            <a href="index.jsp">Home</a><br>
            <a href="login.jsp">Login</a><br>
            <a href="account_activity.jsp">Account Activity</a><br>
            <a href="transaction.jsp">Transactions</a><br>
            <a href ="new_customer.jsp">New Customer Sign Up page</a><br>
            <a href ="password_reset.jsp">Reset password page</a><br>
        </nav>
    
         <c:import url="/includes/footer.jsp"/>  
    </body>
       
</html>
