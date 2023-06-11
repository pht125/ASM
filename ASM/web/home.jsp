<%-- 
    Document   : MainPage
    Created on : Jun 4, 2023, 9:29:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <style>
        nav {
            margin: 25px;
            background: #f9f9f9;
            padding: 16px;
            .menuItems {
                list-style: none;
                display: flex;

                li {
                    margin: 50px;

                    a {
                        text-decoration: none;
                        color: #8f8f8f;
                        font-size: 24px;
                        font-weight: 400;

                        position: relative;
                        text-transform: uppercase;

                        &::before {
                            content: attr(data-item);

                            color: #8254ff;
                            position: absolute;
                            top: 0;
                            bottom: 0;
                            left: 0;
                            right: 0;
                            width: 0;
                            overflow: hidden;
                        }

                        &:hover {
                            &::before {
                                width: 100%;
                            }
                        }
                    }
                }
            }
        }
    </style>
    <body>

        <div class="header">
            <div class="header__tile">
            </div>
            <div class="header__logo">
                <img src="">
            </div>
            <div class="header__search">
                <form>
                    <input type="text" placeholder="Search in website">
                    <button type="submit">Search</button>
                </form>
            </div>
        </div>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="images/image.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/image1.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/image(3.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only"></span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only"></span>
            </a>
        </div>

        <!----------------------------------------------------------------------------------------------->

        <section>

            <nav>
                <ul class="menuItems">
                    <li><a href='#' data-item='Home'>Home</a></li>
                    <li><a href='#' data-item='About'>About</a></li>
                    <li><a href='#' data-item='Projects'>Projects</a></li>
                    <li><a href='#' data-item='Blog'>Blog</a></li>
                    <li><a href='#' data-item='Contact'>Contact</a></li>
                </ul>
            </nav>

        </section>
    </body>
</html>
