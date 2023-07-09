<%-- 
    Document   : search
    Created on : Jun 28, 2023, 11:27:23 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Product</title>
        <link rel="stylesheet" href="css/keeb_homestyle.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
    </head>
    <style>
        body{
            margin: 0;
        }
        .banner{
            width: 100%;
        }

        .banner img{
            width: 100%;
            height: 600px;
            object-fit: cover;
        }

        .banner_desc_info{
            background: rgba(29, 29, 29, 0.7);
            position: relative;
            top: -300px;
            left: 50px;
            width: 50%;
            height: auto;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;

            border-radius: 10px;
            padding: 10px;
        }

        .banner_desc_info h1{
            color: white;
            margin-left: 10px;
        }
        .banner_desc_info p{
            width: 90%;
            color: white;
            margin: 10px;

        }

        .product-content{
            display: flex;
            justify-content: left;
        }

        .item-product{
            padding-left: calc(var(--bs-gutter-x) * 2);
            padding-right: calc(var(--bs-gutter-x) * 5);
        }

        .box_image{
            overflow: hidden;
        }

        .product_image img{
            object-fit: cover;
            transition: transform 0.8s;
            cursor: pointer;
            overflow: hidden;
        }

        .product_image:hover{
            transform: scale(1.05);
        }

        .button-add {
            appearance: none;
            background-color: #2ea44f;
            border: 1px solid rgba(27, 31, 35, .15);
            border-radius: 6px;
            box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
            box-sizing: border-box;
            color: #fff;
            cursor: pointer;
            display: inline-block;
            font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
            font-size: 14px;
            font-weight: 600;
            line-height: 20px;
            padding: 6px 16px;
            position: relative;
            text-align: center;
            text-decoration: none;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            white-space: nowrap;
        }

        .button-add:focus:not(:focus-visible):not(.focus-visible) {
            box-shadow: none;
            outline: none;
        }

        .button-add:hover {
            background-color: #2c974b;
        }

        .button-update {
            appearance: none;
            background-color: #003EC4;
            border: 1px solid rgba(27, 31, 35, .15);
            border-radius: 6px;
            box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
            box-sizing: border-box;
            color: #fff;
            cursor: pointer;
            display: inline-block;
            font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
            font-size: 14px;
            font-weight: 600;
            line-height: 20px;
            padding: 6px 16px;
            position: relative;
            text-align: center;
            text-decoration: none;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            white-space: nowrap;
        }

        .button-update:focus:not(:focus-visible):not(.focus-visible) {
            box-shadow: none;
            outline: none;
        }

        .button-update:hover {
            background-color: #020A97;
        }


        .button-3 {
            appearance: none;
            background-color: #E00606;
            border: 1px solid rgba(27, 31, 35, .15);
            border-radius: 6px;
            box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
            box-sizing: border-box;
            color: #fff;
            cursor: pointer;
            display: inline-block;
            font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
            font-size: 14px;
            font-weight: 600;
            line-height: 20px;
            padding: 6px 16px;
            position: relative;
            text-align: center;
            text-decoration: none;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            white-space: nowrap;
        }

        .button-3:focus:not(:focus-visible):not(.focus-visible) {
            box-shadow: none;
            outline: none;
        }

        .button-3:hover {
            background-color: #971B1B;
        }


    </style>
    <body>
        <div >
            <%@include file="header.jsp" %>
        </div>
        <c:if test="${sessionScope.acc.role == 1}">
            <button class="button-add" style="position: absolute; top: 150px;left: 20px"><a style="text-decoration: none;color:white" href="addProduct.jsp">Add product</a></button>
        </c:if>
        <div class="page-content" style="margin-top: 50px">
            <div class="container">
                <div class="product-content row" style="display: flex; justify-content: left;">
                    <c:forEach items="${requestScope.listAll}" var="product">
                        <div class="col-lg-3 col-md-4 col-sm-6" style="position: relative">
                            <div class="item-product-content" style="padding: 10px;margin-bottom: 20px">
                                <a href="detail?id=${product.product_id}" style="text-decoration: none; ">
                                    <div class="box_image">
                                        <div class="product_image">
                                            <c:if test="${product.sale_percent > 0}">
                                                <div class="badge text-white " style="position: absolute; top: 0.5rem; right: 0.5rem ;margin-left: 1rem;background-color: rgba(255, 60, 60, 1)">Sale</div>
                                            </c:if>
                                            <c:if test="${product.quantity == 0}">
                                                <div class="badge text-white " style="position: absolute; top: 0.5rem; right: 0.5rem ;margin-left: 1rem;background-color: rgba(50, 50, 50, 1);">Sold out</div>
                                            </c:if>
                                            <img style="object-fit: contain" width="100%" height="286px" src="${product.img}" alt="${product.product_name}" sizes="(max-width: 300px) 100vw, 300px"/>
                                        </div>
                                    </div>
                                    <div class="box-text">
                                        <div style="height: 50px;margin-bottom: 25px">
                                            <h5 class="product_name" style="color:rgba(21, 21, 21, 1);" >${product.product_name}</h5>
                                        </div>

                                        <div class="price-wrapper">
                                            <c:if test="${product.sale_percent == 0}">
                                                <span class="price" style="display: flex;">
                                                    <h5 style="color: rgba(255, 70, 70, 1)"><fmt:formatNumber type = "number" 
                                                                      maxFractionDigits = "0" value = "${product.price}" /><h6 style="margin-left:3px;color: rgba(255, 70, 70, 1)"> đ</h6></h5>

                                                </span>
                                            </c:if>
                                            <c:if test="${product.sale_percent >     0}">
                                                <div class="price" style="display: flex;">
                                                    <h5 style="color: rgba(255, 70, 70, 1)"><fmt:formatNumber type = "number" 
                                                                      maxFractionDigits = "0" value = "${(product.price * (100 - product.sale_percent) / 100)}" /><h6 style="margin-left:3px;color: rgba(255, 70, 70, 1)"> đ</h6>&nbsp&nbsp</h5>

                                                    <h5 style="text-decoration: line-through; color: rgba(90, 90, 90, 0.5);"><fmt:formatNumber type = "number" 
                                                                      maxFractionDigits = "0" value = "${product.price}" /><h6 style="margin-left:3px; color: rgba(90, 90, 90, 0.5)"> đ</h6></h5>

                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </a>
                                <c:if test="${sessionScope.acc.role == 1}">
                                    <div style="display: flex; justify-content: space-between">
                                        <button type="submit" class="button-update"><a style="text-decoration: none;color:white" href="updateProduct?id=${product.product_id}">Update</a></button>
                                        <button type="submit" class="button-3" onclick="showMess('${product.product_id}')"><a style="text-decoration: none;color:white" href="#" >Delete</a></button>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
    <script type="text/javascript">
        function showMess(id) {
            if (confirm("Are you sure to delete?")) {
                window.location = "deleteProduct?id=" + id;
            }
        }

    </script>
</html>
