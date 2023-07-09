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
        <title>Account</title>
    </head>
    <body>
        <a href="home">Back to home</a>
        <div>
            <input readonly="" type="email" value="${sessionScope.acc.name}"/>
           
        </div>
        <div>
            <input readonly="" type="email" value="${sessionScope.acc.address}"/>
        </div>
        <div>
            <input readonly="" type="email" value="${sessionScope.acc.account_id}"/>
        </div>
        <button type="submit" class="button-34">
            <a href="updateAcc?id=${sessionScope.acc.account_id}" style="text-decoration: none; ">update</a>
        </button>
    </body>
</html>
