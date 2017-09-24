<%-- 
    Document   : password_reset
    Created on : Sep 2, 2017, 8:36:04 AM
    Author     : TinaCH
--%>
 <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
        <c:import url="/header.html"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles.css" type="text/css"/>
        <title>TOBA Reset Password</title>
    </head>
    <body>
        <p>Reset your password below</p>
        <p><i>${message}</i></p>
        
        <form action="ResetPassword" method="get"> 
            <input type="hidden" name="action" value="reset"><br>
            <label>Username:</label>
            <span>${user.username}</span><br>
            <label>Old Password:</label>
            <span>${user.password}</span><br><br>
            <label>New Password:</label>
            <input type="text" name=" new password">
            <input type="submit"  name ="reset" value="submit" >
        </form>
  <%-- <h1>Password Reset</h1>
    
    <body>
        <p>Change password</p>
        
        <p>Username: ${user.userName}</p>
        
        <form action="ResetPassword" method="post">
            
            <label>Password:</label>
            <input type="text" name="password" value="${user.password}"><br> 
            <br>
            <label>&nbsp;</label>
            <input type="submit" value="Reset">
        </form>--%>

        
         
    </body>
    <c:import url="/footer.jsp"/>  
</html>
