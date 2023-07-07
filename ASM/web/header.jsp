<%-- 
    Document   : header
    Created on : Jun 18, 2023, 11:11:19 PM
    Author     : Admin
--%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <style>
        .header{
            /*border: 1px solid black;*/
            background-color: #252525;
            display: flex;
            position: -webkit-sticky; /* Safari */
            position: sticky;
            top: 0;
            width: 100%;
            height: 130px;
        }

        .header_logo{
            /*border: 1px solid black;*/
            width: calc((100%/12)*3);
            cursor: pointer;
        }

        .header_logo img{
            position:relative;
            width: 50%;
            height: auto;
            margin-left: 15%;
            top:10%;
        }

        .header_search{
            /*border: 1px solid black;*/
            display: flex;
            width: calc((100%/12)*6);
            justify-content: center;
            align-items: center;
        }

        .header_search form{
            width: 80%;
        }

        .header_search form input{
            width: calc((100%/12)*10);
            border-radius: 30px;
            border: none;
            height: 3rem;
            padding: 0 20px 0;
        }

        .header_search form button{
            flex:1;
            /*            position: fixed;
                        left: 10px;*/
            margin-left: -3px;
            border-radius: 50%;
            border: none;
            width: 3rem;
            height: 3rem;
        }

        .header_search form button i{
            font-size: larger;
        }
        .header_tile{
            /*border: 1px solid white;*/
            width: calc((100%/12)*3);
            display: flex;
        }

        .header_tile a{
            text-decoration: none;
        }

        .header_title_row{
            width: calc((100%/12)*4);
        }

        .header_title_row a{
            /*border: 1px solid red;*/
            margin: auto;
            display: flex;
            margin-top: 50%;
            align-items: center;
            justify-content: center;
        }
        .header_title_row h5{
            /*border: 1px solid red;*/
            color: white;
            margin: auto;
            display: flex;
            margin-top: 42%;
            align-items: center;
            justify-content: center;
        }


        .dropdown_button {
            /*background-color: #3498DB;*/
            /*color: white;*/
            /*padding: 16px;*/
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropdown_button:hover, .dropdown_button:focus {
            background-color: #2980B9;
            text-decoration: none;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown_content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            /*            min-width: 160px;
                        overflow: auto;
                        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);*/
            z-index: 1;
            top: 100px;
            left: 70px;
        }

        .dropdown_content a {
            color: black;
            /*padding: 12px 16px;*/
            text-decoration: none;
            display: block;
            margin: 0;
        }

        .dropdown a:hover {
            background-color: #ddd;
        }


    </style>
    <body>
        <c:set var="val" value=""></c:set>
        <c:forEach var="cookies" items="${cookie}">
            <c:if test="${cookies.key == 'cart'}">
                <c:set var="val" value="${cookies.value.value}"></c:set>
            </c:if>
            
        </c:forEach>
        <div class="header">
            <div class="header_logo">
                <a href="home">
                    <img src="images/web_logo_white.png">
                </a>
            </div>
            <div class="header_search">
                <form action="search" method="post">

                    <input value="${nameSearch}" name="name" type="text" placeholder=" Search in website">
                    <button style="margin-left: 4px" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>

                </form>
            </div>
            <div class="header_tile">
                <c:if test="${sessionScope.acc == null}">
                    <div class="header_title_row" style="display: flex;">
                        <h5>${sessionScope.acc.name}</h5>
                        <a href="login"><i class="fa-solid fa-user fa-lg" style="color: #ffffff;"></i></a>
                    </div>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <div class="header_title_row dropdown" style="display: flex;">
                        <h5>${sessionScope.acc.name}</h5>
                        <a onclick="myFunction(this)" class="dropdown_button"><i class="fa-solid fa-user fa-lg" style="color: #ffffff;"></i></a>
                        <div id="myDropdown" class="dropdown_content">
                            <a href="info">Infomation</a>
                            <a href="logout">Log out</a>
                        </div>
                    </div>
                </c:if>
                <div class="header_title_row" style="position: relative">
                    <c:if test="${val!=''}">
                        <h6 style="color: #fff;position: absolute ;top: 35px; left: 75px; padding: 3px 5px 4px;background-color: rgba(255, 70, 70, 1);border-radius: 50%;">${fn:length(fn:split(val,"|"))}</h6>
                    </c:if>
                        
                    
                    
                        <a href="cart"><i class="fa-solid fa-cart-shopping fa-lg" style="color: #ffffff;"></i>(${requestScope.size})</a>
                </div>
            </div>
        </div>
        <script>
            function myFunction(element) {
                element.classList.toggle("active");
                var x = document.getElementById("myDropdown");
                if (x.style.display === "block") {
                    x.style.display = "none";
                } else {
                    x.style.display = "block";
                }
            }
        </script>
    </body>
</html>
