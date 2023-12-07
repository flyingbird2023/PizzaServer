<%-- 
    Document   : zweite
    Created on : 2023?11?25?, ??10:58:43
    Author     : zhanfei
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles.css">
        <title>JSP Page</title>
    </head>
    <body>

        <%@include file="header.jsp"   %>
        <%
       ctrl.collectOrder(request);
        %>

        <%@include file="zusammenfassung.jspf" %>

        <br>
        <br>
        <br>

        <p>Bitte geben Sie Kundeninformationen ein</p>
        <form action="commission.jsp" method="post">
            <table>  
                <tr><td>Vorname: </td><td>  <input type="text" name="firstname" value="" /></td></tr>
                <tr><td>Nachname: </td><td>  <input type="text" name="lastname" value="" /></td></tr>
                <tr><td>Adresse </td><td>  <input type="text" name="adresse" value="" /></td></tr>
                <tr><td>PLZ: </td><td>  <input type="text" name="plz" value="" /></td></tr>
                <tr><td>City: </td><td>  <input type="text" name="city" value="" /></td></tr>
                <tr><td>Mobile: </td><td>  <input type="text" name="mobile" value="" /></td></tr>
            </table>
            <input type="submit" value="OK" />
        </form>
        <%@include file="footer.jsp"%>
    </body>
</html>
