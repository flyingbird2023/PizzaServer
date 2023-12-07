<%-- 
    Document   : gaestebuch
    Created on : 2023年12月6日, 下午3:17:36
    Author     : zhanfei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="next.jsp">
            <table>
                <tr><td>Vorname:</td><td><input type="text" name="vorname" /></td></tr>
                <tr><td>Nachname:</td><td><input type="text" name="nachname" /></td></tr>
                <tr><td>E-Mail:</td><td><input type="text" name="email" /></td></tr>
                <tr><td>Webadresse:</td><td><input type="text" name="web" /></td></tr>
                <tr><td>Alter:</td><td><input type="text" name="age" /></td></tr>
                <tr><td>Region:</td><td><input type="text" name="region" /></td></tr>
                <tr><td>Kommentar</td><td><textarea  name="kommentar" placeholder="Your MEssage to Us "></textarea></td></tr>
                
               
            </table>
             <input type="submit" value="OK" />
        </form>
        <br/>
        <a href="next.jsp">zu den Einträgen</a>
    </body>
</html>
