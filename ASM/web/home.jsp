<%-- 
    Document   : MainPage
    Created on : Jun 4, 2023, 9:29:48 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/homestyle.css"/>
    </head>

    <body>
        <div>
            <%@include file="header.jsp" %>
        </div>

        <!----------------------------------------------------------------------------------------------->
        <!--image slider start-->
        <div class="slider">
            <div class="slides">
                <!--radio buttons start-->
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">
                <!--radio buttons end-->
                <!--slide images start-->
                <div class="slide first">
                    <img src="images/slider_img/slider_mouse.png" alt="">
                </div>
                <div class="slide">
                    <img src="images/slider_img/slider_keeb.png" alt="">
                </div>
                <div class="slide">
                    <img src="images/slider_img/slider_pad.png" alt="">
                </div>
                <div class="slide">
                    <img src="images/slider_img/slider_switch.png" alt="">
                </div>
                <!--slide images end-->
                <!--automatic navigation start-->
                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>
                </div>
                <!--automatic navigation end-->
            </div>
            <!--manual navigation start-->
            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
                <label for="radio4" class="manual-btn"></label>
            </div>
            <!--manual navigation end-->
        </div>
        <!--image slider end-->

        <!----------------------------------------------------------------------------------------------->

        <section>

            <nav>
                <ul class="menuItems">
                    <li class="col-lg-2 col-md-5 menuItems_info">
                        <a href="keeb">
                            <div>
                                <div class="menuItems_image">
                                    <img src="images/menu_icon_keeb.png" alt="alt" />
                                </div>
                                <div class="menuItems_name" href='keeb' data-item='Bàn phím'>Bàn phím</div>
                            </div>
                        </a>
                    </li>
                    <li class="col-lg-2 col-md-5 menuItems_info">
                        <a href="#">
                            <div>
                                <div class="menuItems_image">
                                    <img src="images/menu_icon_mouse.png" alt="alt" />
                                </div>
                                <div class="menuItems_name" href='#' data-item='Bàn phím'>Chuột</div>
                            </div>
                        </a>
                    </li>
                    <li class="col-lg-2 col-md-5 menuItems_info">
                        <a href="#">
                            <div>
                                <div class="menuItems_image">
                                    <img src="images/menu_icon_pad.png" alt="alt" />
                                </div>
                                <div class="menuItems_name" href='#' data-item='Bàn phím'>Lót chuột</div>
                            </div>
                        </a>
                    </li>
                    <li class="col-lg-2 col-md-5 menuItems_info">
                        <a class="underline_text" href="#">
                            <div>
                                <div class="menuItems_image">
                                    <img src="images/menu_icon_switch.png" alt="alt" />
                                </div>
                                <div class="menuItems_name" href='#' data-item='Bàn phím'>Switch</div>
                            </div>
                        </a>
                    </li>
                </ul>
            </nav>

        </section>

        <div>
            <%@include file="footer.jsp" %>
        </div>



        <script type="text/javascript">
            var counter = 1;
            setInterval(function () {
                document.getElementById('radio' + counter).checked = true;
                counter++;
                if (counter > 4) {
                    counter = 1;
                }
            }, 5000);
        </script>
    </body>
</html>
