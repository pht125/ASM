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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/homestyle.css"/>
    </head>
    <style>
        /*        .cate_menu{
                    margin-bottom: 400px;
                }*/

    </style>
    <body>

        <div class="header_home" >
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

        <div class="cate_menu">
            <ul class="menuItems" style="box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px; position: unset;">
                <li class="col-lg-2 col-md-5 menuItems_info">
                    <a href="keeb?id=1">
                        <div>
                            <div class="menuItems_image">
                                <img src="images/menu_icon_keeb.png" alt="alt" />
                            </div>
                            <div class="menuItems_name" href='keeb' data-item='Bàn phím'>Bàn phím</div>
                        </div>
                    </a>
                </li>
                <li class="col-lg-2 col-md-5 menuItems_info">
                    <a href="mouse">
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
        </div>

        <div class="page-content">
            <div class="container">
                <div class="product-content row" style="display: flex; justify-content: left;">
                    <c:forEach items="${requestScope.listFeatured}" var="product">
                        <div class="col-lg-3 col-md-4 col-sm-6" style="position: relative">
                            <div class="item-product-content" style="padding: 10px;margin-bottom: 20px">
                                <a href="detail?id=${product.product_id}" style="text-decoration: none; ">
                                    <div class="box_image">
                                        <div class="product_image">
                                            <c:if test="${product.sale_percent > 0}">
                                                <div class="badge text-white " style="position: absolute; top: 0.5rem; right: 0.5rem ;margin-left: 1rem;background-color: rgba(255, 60, 60, 1)">Sale</div>
                                            </c:if>
                                            <img width="100%" height="286px" src="${product.img}" alt="${product.product_name}" sizes="(max-width: 300px) 100vw, 300px"/>
                                        </div>
                                    </div>
                                    <div class="box-text">
                                        <div style="height: 50px">
                                            <h5 class="product_name" style="color:rgba(21, 21, 21, 1);" >${product.product_name}</h5>
                                        </div>

                                        <div class="price-wrapper">
                                            <c:if test="${product.sale_percent == 0}">
                                                <span class="price">
                                                    <h5 style="color: rgba(90, 90, 90, 1);"><fmt:formatNumber type = "number" 
                                                                                                              maxFractionDigits = "0" value = "${product.price}" /></h5>
                                                </span>
                                            </c:if>
                                            <c:if test="${product.sale_percent >     0}">
                                                <div class="price" style="display: flex;">
                                                    <h5 style="color: rgba(255, 60, 60, 1)"><fmt:formatNumber type = "number" 
                                                                                                              maxFractionDigits = "0" value = "${(product.price * (100 - product.sale_percent) / 100)}" />&nbsp&nbsp</h5>
                                                    <h5 style="text-decoration: line-through; color: rgba(90, 90, 90, 0.5);"><fmt:formatNumber type = "number" 
                                                                                                                                               maxFractionDigits = "0" value = "${product.price}" /></h5>
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <div class="footer_home">
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
