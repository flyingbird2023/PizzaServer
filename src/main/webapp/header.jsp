<%-- 
    Document   : header
    Created on : 2023?11?26?, ??5:18:53
    Author     : zhanfei
--%>

<jsp:useBean id="p" class="com.ibb.servlet.pizzaserverszhang.Customer" scope="session"/>
<jsp:useBean id="ctrl" class="Com.ibb.ctrl.PizzaServiceController" scope="session"/>
 <link rel="stylesheet" type="text/css" href="css/styles.css">   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="de_DE"/> 
<center><h1>Header</h1></center>