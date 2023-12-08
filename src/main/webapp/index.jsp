<%-- 
    Document   : index
    Created on : 2023年11月25日, 下午10:43:45
    Author     : zhanfei
--%>


<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ibb.model.Menu"%>
<%@page import="com.ibb.model.Customer"%>
<%@page import="com.ibb.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/styles.css">    
        <title>JSP Page</title>
    </head>

    <body>
        <%@include file="header.jsp"   %>

        <h1>Pizza Menue</h1>

        <%-- <form action="commission.jsp" method="post">  --%>
        <form action="zweite.jsp" method="post"> 
            <table>
                <tr>
                    <td style='text-align: center'>Id</td>
                    <td style='text-align: center'>Gerisht</td>
                    <td style='text-align: center'>Preis</td>
                    <td style='text-align: center'>Anzahl</td>
                </tr>
                <c:forEach var="product" items="${ctrl.getSpeisekarte().productList}">


                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td style='text-align: right'> <fmt:formatNumber type="currency" value="${product.price}"/></td>
                        <td><input type="number" name="${product.id}" value="0" ></td>
                    </tr>
                </c:forEach>

            </table> 

            <input type="submit" value="bestellen" />
        </form>

    <%@include file="footer.jsp"%>
</body>
</html>
