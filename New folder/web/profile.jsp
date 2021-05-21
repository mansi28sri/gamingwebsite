<%-- 
    Document   : profile
    Created on : 26 Apr, 2021, 5:08:31 PM
    Author     : mansi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
        <% 
            String user;
            user=(String)session.getAttribute("email");
            %>
            <h1>Hello <%= user %> </h1> 
             <a href="submenu.html"><button style="background-color:cyan;width:250px;height:100px;font-size:40px" "><b>Game Menu</b></button></a>
    </body>
</html>
