<%-- 
    Document   : detail
    Created on : Jun 26, 2023, 9:45:27 AM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${detail.product_name}</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/detail.css?v=51"/>
    </head>
    <style>
        body{
            overflow-x: hidden;
        }
        .card{
            border: none;
        }

        .product_name{
            font-size: 30px;
        }

        .price-detail-wrap h5{
            font-size: 20px;
        }

        .section-stack{
            display: flex;
            justify-content: space-around;
        }

        .section-stack__intro{
            width: 40%;
        }
        .section-stack__main{
            width: 40%;
        }

        .feature-chart__table{
            padding: 30px;

        }

        .feature-chart{
            border-radius: 20px;
        }

        .prose:first-child p{
            font-size: larger;
        }

        .feature-chart__table-row{
            border-bottom: 1px solid rgba(150, 150, 150, 1);
            margin-bottom: 10px;
            display: flex;

        }

        .feature-chart__heading{
            width: 25%;
            padding-right: 20px;
        }

        .button-34 {
            align-items: center;
            background-color: rgba(255, 57, 57, 0.8);
            border: 0;
            border-radius: 100px;
            box-sizing: border-box;
            color: #ffffff;
            cursor: pointer;
            display: inline-flex;
            font-family: -apple-system, system-ui, system-ui, "Segoe UI", Roboto, "Helvetica Neue", "Fira Sans", Ubuntu, Oxygen, "Oxygen Sans", Cantarell, "Droid Sans", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Lucida Grande", Helvetica, Arial, sans-serif;
            font-size: 16px;
            font-weight: 600;
            justify-content: center;
            line-height: 20px;
            max-width: 480px;
            min-height: 50px;
            min-width: 0px;
            overflow: hidden;
            padding: 0px;
            padding-left: 20px;
            padding-right: 20px;
            text-align: center;
            touch-action: manipulation;
            transition: background-color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, box-shadow 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s;
            user-select: none;
            -webkit-user-select: none;
            vertical-align: middle;
        }
        .button-34-out {
            align-items: center;
            background-color: rgba(50, 50, 50, 1);
            border: 0;
            border-radius: 100px;
            box-sizing: border-box;
            color: #ffffff;
            cursor: pointer;
            display: inline-flex;
            font-family: -apple-system, system-ui, system-ui, "Segoe UI", Roboto, "Helvetica Neue", "Fira Sans", Ubuntu, Oxygen, "Oxygen Sans", Cantarell, "Droid Sans", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Lucida Grande", Helvetica, Arial, sans-serif;
            font-size: 16px;
            font-weight: 600;
            justify-content: center;
            line-height: 20px;
            max-width: 480px;
            min-height: 50px;
            min-width: 0px;
            overflow: hidden;
            padding: 0px;
            padding-left: 20px;
            padding-right: 20px;
            text-align: center;
            touch-action: manipulation;
            transition: background-color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, box-shadow 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s;
            user-select: none;
            -webkit-user-select: none;
            vertical-align: middle;
        }

        .button-34:hover,
        .button-34:focus {
            background-color: rgba(255, 57, 57, 0.8);
            color: #ffffff;
        }
    </style>
    <body>
        <div class="header_home" >
            <%@include file="header.jsp" %>
        </div>
        <form name="f" action="" method="post">
            <div class="row">

                <div class="">
                    <div class="container" style="margin-top: 12px;margin-bottom: 12px;max-width: 100%;">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 ">
                                    <article class="gallery-wrap">
                                        <div class="img-big-wrap">
                                            <div><img style="width: 100%;height: 607px;object-fit: cover;" src="${detail.img}"></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <c:set var="id" value="${detail.product_id}"/>
                                    <input hidden="" value="${detail.product_id}" name="id"/>
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3 product_name">${detail.product_name}</h3>

                                        <p class="price-detail-wrap">
                                            <span class=" h3 text-warning">
                                                <c:if test="${detail.sale_percent == 0}">
                                                    <div  style="display: flex;">
                                                        <h5 style="color: rgba(255, 70, 70, 1);font-size: larger"><fmt:formatNumber type = "number" 
                                                                          maxFractionDigits = "0" value = "${detail.price}" /><h6 style="margin-left:3px;color: rgba(255, 70, 70, 1);font-size: larger"> đ</h6></h5>

                                                    </div>
                                                </c:if>
                                                <c:if test="${detail.sale_percent > 0}">
                                                    <div class="price" style="display: flex;">
                                                        <h5 style="color: rgba(255, 70, 70, 1);font-size: larger"><fmt:formatNumber type = "number" 
                                                                          maxFractionDigits = "0" value = "${(detail.price * (100 - detail.sale_percent) / 100)}" /><h6 style="margin-left:3px;color: rgba(255, 70, 70, 1)"> đ</h6>&nbsp&nbsp</h5>

                                                        <h5 style="text-decoration: line-through; color: rgba(90, 90, 90, 0.5);font-size: larger"><fmt:formatNumber type = "number" 
                                                                          maxFractionDigits = "0" value = "${detail.price}" /><h6 style="margin-left:3px; color: rgba(90, 90, 90, 0.5);font-size: larger"> đ</h6></h5>

                                                    </div>
                                                </c:if>
                                            </span>
                                        </p> <!-- price-detail-wrap .// -->



                                        <div class="row">
                                        </div> <!-- row.// -->
                                        <hr style="margin-bottom: 30px">
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                                                    Quantity: <input type="number" name="num" value="1" min="1" max="${detail.quantity}">
                                                </dl> <!-- item-property .// -->
                                            </div> <!-- col.// -->

                                        </div>
                                        <c:if test="${detail.quantity >= 1}">
                                            <button onclick="buy('${detail.product_id}')" type="submit" class="button-34">Add to cart</button>
                                        </c:if>
                                        <c:if test="${detail.quantity == 0}">
                                            <button class="button-34-out">Out of stock</button>
                                        </c:if>   
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->

                    </div>
                </div>
            </div>
        </form>

        <div style="margin-top: 50px">
            ${detail.description}
        </div>

        <div class="header_home" >
            <%@include file="footer.jsp" %>
        </div>
        <script type="text/javascript">
            function buy(id) {
                var m = document.f.num.value;
                document.f.action = "buy?id=" + id + "&num=" + m;
                document.f.submit();
            }
        </script>
    </body>
</html>
