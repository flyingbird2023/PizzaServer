<%-- 
    Document   : commission
    Created on : 2023年11月30日, 上午9:57:25
    Author     : zhanfei
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>







<jsp:useBean id="customer" class="com.ibb.servlet.pizzaserverszhang.Customer" scope="session"/>
<jsp:setProperty name="customer" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h2>Ihre Bstellung wurde erfolgreich verschickt!</h2>

        <h1>Zusammenfassung:</h1>
        <br>
     
         <%@include file="zusammenfassung.jspf" %>
        
        <br>
        <br>
        <h1>Lieferung an :</h1>

        ${customer.firstname} ${customer.lastname} <br>
        ${customer.adresse} <br>
        ${customer.plz}&nbsp;${customer.city} <br>
        ${customer.mobile} 
        <br><br><br><br><br>
        <a href="gaestebuch.jsp">Gaestbuch</a>
        <br><br><br><br><br>
        Today's date: <%= (new java.util.Date()).toLocaleString()%>
        <br>
        <% 
            out.println("Ip-Adresse : " + request.getRemoteAddr()); 
        %>
        <br>
        <% 
            String sessionId = session.getId();
            out.println("Session ID : " + sessionId);
        %>

    </body>
</html>
