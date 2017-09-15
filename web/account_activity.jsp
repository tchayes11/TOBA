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
        
        <h2>Customer Account Activity</h2>
        <c:choose>
            <c:if test="${user !=null}">
                <p>Welcome&nbsp;${User.firstName}&nbsp;${User.lastName}</p>
            </c:if>
            <c:if test ="${user == null}">
                <p>Not Logged In</p>
            </c:if>
        </c:choose>
                
                
                
                <c:import url="/includes/footer.jsp"/>            
    </body>
</html>
