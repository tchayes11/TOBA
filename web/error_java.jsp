<%-- 
    Document   : error_java
    Created on : Aug 17, 2017, 2:19:46 PM
    Author     : TinaCH
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <c:import url="/header.html" />
        <title></title>
    </head>
    <body>
        <h1>Java Error</h1
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>
        
        <h2>Details</h2>
        <p>Type: {pageContext.exception["class"]}</p>
        <p>Message: {pageContext.exception.message}</p>
        
        
    </body>
    <c:import url="/footer.jsp"/>  
</html>
