<%-- 
    Document   : footer
    Created on : Sep 7, 2017, 3:31:01 PM
    Author     : TinaCH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ page import="java.util.GregorianCalendar, java.util.Calendar" %> 
        <title></title>
    </head>
    <% 
        GregorianCalendar currentDate = new GregorianCalendar();
        int currentYear = currentDate.get(Calendar.YEAR);
     %>
     <p>&copy; Copyright <%= currentYear %> Tina Hayes</p>
    <body>
        <h1></h1>
    </body>
</html>
