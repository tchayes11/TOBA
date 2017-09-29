<%-- 
    Document   : error_java
    Created on : Aug 17, 2017, 2:19:46 PM
    Author     : TinaCH
--%>


<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <c:import url="/header.html" />
        <title></title>
    </head>
    <%--<body>
        <h1>Java Error</h1
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>
        
        <h2>Details</h2>
        <p>Type: {pageContext.exception["class"]}</p>
        <p>Message: {pageContext.exception.message}</p>
   --%>
    <body>
        <h1>Java Error</h1>
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>
        
        <h2>Details</h2>
        
        <h3>Type:</h3>
        <%= exception.getLocalizedMessage() %>
        <h3>Stack Trace:</h3>
        <%=exception.getMessage()%>
        
        <%
StringWriter stringWriter = new StringWriter();
PrintWriter printWriter = new PrintWriter(stringWriter);
exception.printStackTrace(printWriter);
out.println(stringWriter);
printWriter.close();
stringWriter.close();
        %>
        
        
    </body>
    <c:import url="/footer.jsp"/>  
</html>
