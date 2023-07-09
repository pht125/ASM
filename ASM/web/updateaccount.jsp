<%-- 
    Document   : updateaccount
    Created on : Jul 8, 2023, 9:53:24 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="home">Cancel</a>
        <form action="updateAcc" method="post">
            Name: <input type="text" name="name" value="${sessionScope.acc.name}" required/> <br/>
            Phone: <input type="text" name="phone" value="${sessionScope.acc.phone}" required/> <br/>
            Address: <input type="text" name="address" value="${sessionScope.acc.address}" required/> <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
