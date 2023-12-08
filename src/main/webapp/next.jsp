<%-- 
    Document   : next
    Created on : 23.02.2015, 20:11:30
    Author     : Schulung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="info.model.Eintrag"%>
<%@page import="info.model.Gaestebuch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="gbCtrl" scope="session" class="info.webctrl.GaestebuchController" />
<jsp:useBean id="eint" scope="request" class="info.model.Eintrag" />
<jsp:useBean id="gb" scope="request" class="info.model.Gaestebuch" />
<jsp:setProperty name="eint" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
                gbCtrl.setCurrentEintrag(eint);
                gbCtrl.save(request);
            
            
            out.print("<table>");
            for (Eintrag tmp : gb.getList()) {
                out.print("<tr><td>"+tmp.getVorname() + "</td><td>" + tmp.getNachname() 
                + "</td><td> " + tmp.getKommentar() + "</td></tr> ");
            }
            out.print("</table>");
        %> 
        <h1> Zweite Tabelle mit JSTL </h1>
        <table>
            <c:forEach var="tmp" items="${gb.getList()}" >
                <tr><td>${tmp.getVorname()}   </td><td> ${tmp.getNachname()} </td><td>${tmp.getKommentar()}</td></tr>

            </c:forEach>
        </table>
    </body>
</html>
