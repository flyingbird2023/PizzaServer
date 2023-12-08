<%-- 
    Document   : index
    Created on : 08.12.2023, 09:36:44
    Author     : trainer
--%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Date"%>
<%@page import="info.util.ActiveSessionsListener"%>
<%@page import="java.util.Collection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Active Sessions!</h1>
        <%
          Map<String, HttpSession> mySessions = ActiveSessionsListener.getActiveSessions();
          out.print(request.getHeader("user-Agent"));
           //Collection<HttpSession> mySessions=ActiveSessionsListener.getActiveSessions().values();
          out.println("<br/>anzahl:"+mySessions.size()+"<br/>");
           for (HttpSession tmp : mySessions.values()) {
              // if (!session.getId().equals(tmp.getId())) {
              // ActiveSessionsListener.collectAttribut(tmp);
                   Date creationDate = new Date(tmp.getCreationTime());
                   Date inactive =new Date(tmp.getLastAccessedTime());
                   out.print("<h3>" + tmp.getId() + "--------" + creationDate + "--------"+ inactive +"---</h3><br/>");
              // }
           }


        %>
        <a href='deletesession.jsp'>Session löschen</a> 
         <a href='../logout.jsp'>Ausloggen</a> 
    </body>
</html>
