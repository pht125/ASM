<%-- 
    Document   : signup
    Created on : Jun 10, 2023, 2:47:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        #header{

        }

        .container {
            display: flex;
            flex-direction: column;
            width: 100%;
            text-align: center;
            padding: 0;
            margin: 0;
        }

        .flex-row {
            display: flex;
            flex-direction: row;
            width: 100%;
        }
        .flex-row div {
            flex: 1;
            height: 40px;
            border: 1px solid black;
        }
        .flex-row .flex-child-b3 {
            flex: 0.5;
        }
    </style>
    <body>
        <header id="header" class="container">
            <div class="main-header flex-row">
                <div>LOGO</div>
                <div>SEARCH</div>
                <div>DN/DK/GH</div>
            </div>
            <div class="nav-header">Nav</div>
        </header>
    </body>
</html>
