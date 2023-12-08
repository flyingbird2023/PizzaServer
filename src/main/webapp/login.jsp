<%-- 
    Document   : login
    Created on : 08.12.2023, 10:54:50
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
        <form action="j_security_check">
            <table>
                <tr><td> Username:</td><td><input type="text" name="j_username" value="" /></td></tr>
                <tr><td>Password:</td><td><input type="text" name="j_password" value="" /></td></tr>
            </table>
            <input type="submit" value="login" />
        </form>
       
    </body>
</html>
