<%-- 
    Document   : keeb_home
    Created on : Jun 18, 2023, 10:05:00 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/keeb_homestyle.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
    </head>
    <style>
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
    </style>
    <body>
        <!--START HEADER-->
        <div>
            <%@include file="header.jsp" %>
        </div>
        <!--END HEADER-->
        <!--START DESCRIPTION BANNER-->
        <div class="banner">
            <img class="banner_img" src="https://cdn.shopify.com/s/files/1/0636/9044/0949/collections/Ban-phim-co.png?v=1676875156&width=1000" alt="alt"/>
            <div class="banner_desc_info">
                <h1>
                    Bàn Phím
                </h1>
                <p>
                    Bàn phím thoải mái cho lập trình viên hoặc game thử giảm mệt mỏi khi sử dụng máy tính lâu dài.
                </p>
                <p>
                    Bàn phím là thiết bị không thể thiếu giúp bạn sử dụng máy tính hàng giờ liền tại văn phòng, tại nhà mà không cảm thấy mệt mỏi. Không chỉ làm việc, bàn phím còn là công cụ giúp bạn tự tin chiến thằng đối thủ trong các trò chơi.
                </p>
            </div>
        </div>
        <!--END DESCRIPTION BANNER-->
        <!--START COLLECTION-->
        <div class="page-content">
            <div class="container">
                <div class="product-content flex-row" style="justify-content: left">
                    <c:forEach items="${requestScope.listKeeb}" var="product">
                        <div class="item-product">
                            <div class="item-product-content">
                                
                                <a href="detail?id=${product.product_id}" class="flex-col">
                                    <div class="box-img">
                                        <div class="prd-img">
                                            <img width="300" height="300" src="${product.img}" alt="${product.product_name}" sizes="(max-width: 300px) 100vw, 300px"/>
                                        </div>
                                        
                                    </div>
                                    <div class="box-text">
                                        <div style="height: 50px">
                                            <h5 class="product-name">${product.product_name}</h5>
                                        </div>

                                        <div class="price-wrapper">
                                            <span class="price">
                                                
                                                
                                            </span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
