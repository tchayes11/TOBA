<%-- 
    Document   : account_activity
    Created on : Sep 6, 2017, 3:21:20 PM
    Author     : TinaCH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
        <c:import url="/includes/header.html"/>
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
            <c:if test="${sessionScope.user !=null}">
                <p>Welcome&nbsp;${User.firstName}&nbsp;${User.lastName}</p>
            </c:if>
            <c:if test ="${sessionScope.user == null}">
                <p>Not Logged In</p>
                <p>Go to <a href="login.jsp">to log in</a></p>
            </c:if>
        </c:choose>
                
                
                
                <c:import url="/includes/footer.jsp"/>            
    </body>
</html>
