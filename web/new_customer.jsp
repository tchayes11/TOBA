<%-- 
    Document   : new_customer
    Created on : Aug 24, 2017, 2:34:55 PM
    Author     : TinaCH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %> 
<c:import url="/includes/header.html"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles.css" type="text/css"/>
         
        <title>TOBA New Customer</title>
    </head>
    <body>
        <h1>New Customer</h1>
        <p><i>${message}</i><p>
        
        <form action="NewCustomer" method ="post">
            
            in<put type="hidden" name="action" value="add">
            
            <label>First Name</label>
            <input type ="text" name ="firstName"><br>
            
            <label>Last Name</label>
            <input type ="text" name ="lastName"><br>
            
            <label>Phone</label>
            <input type ="text" name ="phone"><br>
            
            <label>Address</label>
            <input type ="text" name ="address"><br>
            
            <label>City</label>
            <input type ="text" name ="city"><br>
            
            <label>State</label>
            <input type ="text" name ="state"><br>
            
            <label>Zip code</label>
            <input type ="text" name ="zipcode"><br>
            
            <label>Email</label>
            <input type ="text" name ="email"><br>
            
            
            <label>&nbsp;</label>
            <input type= "submit" value="Submit" id="submit">
            
            
        </form>
        
         <c:import url="/includes/footer.jsp"/>
    </body>
</html>
