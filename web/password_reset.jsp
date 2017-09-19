<%-- 
    Document   : password_reset
    Created on : Sep 2, 2017, 8:36:04 AM
    Author     : TinaCH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
         <c:import url="/includes/header.html"/>
        <title>TOBA Reset Password</title>
    </head>
    <body>
        <h1>Reset your password</h1>
        <form action="ResetPasswordServlet" method="get"> 
            <input type="hidden" name="action" value="reset">
            <label>Username:</label>
            <span>${user.username}</span><br>
            <label>Old Password:</label>
            <span>${user.password}</span><br>
            <label>New Password:</label>
            <input type="text" name=" new password" value="add"><br>
            <input type="submit"  name ="reset" value="submit" >
        </form>
        
         <c:import url="/includes/footer.jsp"/>
    </body>
</html>
