<%-- 
    Document   : error_404
    Created on : Aug 17, 2017, 2:18:58 PM
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
        <h1>404 Error</h1>
        <p>The server was not able to find the file you requested.</p>
        <a href ="index.jsp"><button type= "button">Click Me</button></a>
        
         
    </body>
    <c:import url="/footer.jsp"/>  
</html>