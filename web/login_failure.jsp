<%-- 
    Document   : login_failure
    Created on : Sep 18, 2017, 4:46:21 PM
    Author     : TinaCH
--%>
 <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
        <c:import url="/header.html"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         
        <title>TOBA</title>
    </head>
    <body>
        <div>
            <h1>Login Failure</h1>
            <p>You have entered the wrong information please try again</p>
        </div>
        <nav>
            <a href="index.jsp">Home</a><br>
            <a href="login.jsp">Login</a><br>
            <a href="account_activity.jsp">Account Activity</a><br>
            <a href="transaction.jsp">Transactions</a><br>
            <a href ="new_customer.jsp">New Customer Sign Up page</a><br>
            <a href ="password_reset.jsp">Reset password page</a><br>
        </nav>
        
          
    </body>
    <c:import url="/footer.jsp"/>  
</html>
