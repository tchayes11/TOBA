<%-- 
    Document   : login
    Created on : Sep 18, 2017, 4:37:14 PM
    Author     : TinaCH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
        <c:import url="/includes/header.html"/>
        <title>TOBA</title>
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
        <h3>Login</h3>
        <form action="LoginServlet" method ="post">
            
            <input type="hidden" name="action" value="add">
            
            <label>User Name</label>
            <input type ="text" name ="username" required ><br>
            
            <label>Password</label>
            <input type ="text" name ="password" required ><br>
            
            <label>&nbsp;</label>
            <input type= "submit" value="Login" id="submit">
            
         </form>
         <c:import url="/includes/footer.jsp"/>  
    </body>
     
    
    
</html>
