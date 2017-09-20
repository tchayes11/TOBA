<%-- 
    Document   : index
    Created on : Sep 18, 2017, 4:28:36 PM
    Author     : TinaCH
--%>

 <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
 
 <c:import url="/header.html"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>TOBA Bank</title>
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
        
        <h2>Customer Account Activity</h2>
        <c:choose>
            <c:when test="${user.user !=null}">
                <p>Welcome${User.firstName}${User.lastName}</p>
                
            </c:when>
            <c:otherwise>
                <p>"${user.user == null}"</p>
                <p>Not Logged In</p>
                <p>Go to <a href="login.jsp">Login page</a></p>
            </c:otherwise>
        </c:choose>
                
                
                
                            
    </body>
    <c:import url="/footer.jsp"/>  
</html>
