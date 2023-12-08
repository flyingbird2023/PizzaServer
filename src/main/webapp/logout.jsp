<%-- 
    Document   : logout
    Created on : 08.12.2023, 11:06:36
    Author     : trainer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.logout();
            response.sendRedirect("index.jsp");
            
            %>
    </body>
</html>
