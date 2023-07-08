<%-- 
    Document   : accountinfo
    Created on : Jun 29, 2023, 5:35:09 PM
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
        <div>
            ${sessionScope.acc.email}
        </div>
        <div>
            ${sessionScope.acc.password}
        </div>
        <div>
            ${sessionScope.acc.name}
        </div>
        <div>
            ${sessionScope.acc.address}
        </div>
    </body>
</html>
