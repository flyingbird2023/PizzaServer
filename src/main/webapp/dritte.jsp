<%-- 
    Document   : dritte
    Created on : 2023年11月26日, 下午7:26:46
    Author     : zhanfei
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<jsp:useBean id="customer" class="com.ibb.model.Customer" scope="session"/>
<jsp:setProperty name="p" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <h1>Dritte.jsp</h1>


        <div>
            <%
            out.println(p.getFirstname() + " " + p.getLastname() + "<br>");
            out.println(p.getAdresse()+"<br>");
            out.print(p.getPlz() + " ");
            out.println(p.getCity() + "<br>");
            out.println(p.getMobile()+"<br>");

            %>
        </div>

        <br>
        <br>
        <br>
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



        <%@include file="footer.jsp"%>
    </body>
</html>
