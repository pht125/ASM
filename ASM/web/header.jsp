<%-- 
    Document   : header
    Created on : Jun 18, 2023, 11:11:19 PM
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
            /*border: 1px solid black;*/
            width: calc((100%/12)*3);
            display: flex;
        }
        
        .header_tile a{
            text-decoration: none;
        }
        
        .user_account{
            width: 10%;
            height: 100%;
            /*border: 1px solid black;*/
            display: flex;
            margin-left: 100px;
            align-items: center;
        }
        
        .shopping_cart{
            width: 10%;
            height: 100%;
            /*border: 1px solid black;*/
            display: flex;
            
            align-items: center;
        }

    </style>
    <body>
        <div class="header">

            <div class="header_logo">
                <a href="home">
                    <img src="images/web_logo_white.png">
                </a>
            </div>
            <div class="header_search">
                <form action="search" method="post">
                    
                    <input value="${nameSearch}" name="name" type="text" placeholder=" Search in website">
                        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                    
                </form>
            </div>
            <div class="header_tile">
                <a class="user_account" href="logout"><i class="fa-solid fa-user fa-lg" style="color: #ffffff;"></i></a>
                <a class="shopping_cart" href="#"><i class="fa-solid fa-cart-shopping fa-lg" style="color: #ffffff;"></i></a>
            </div>
        </div>
    </body>
</html>
