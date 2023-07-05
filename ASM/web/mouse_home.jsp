<%-- 
    Document   : mouse_home
    Created on : Jun 20, 2023, 5:11:29 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
    </head>
    <style>
        .banner{
            width: 100%;
            height: 45rem;
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
    </style>
    <body>
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
        <form class="col-sm-5" action="mouse" method="get">
            <dl class="param param-inline">
                <dd>
                    <select name="filter" onchange="this.form.submit()" class="form-control form-control-sm"
                            style="width:150px;">
                        <option value=""> Featured </option>
                        <option value="1"> Price: Low to High </option>
                        <option value="2"> Price: High to Low </option>
                        <option value="3"> Newest </option>
                    </select>
                </dd>
            </dl> <!-- item-property .// -->
            
        </form> <!-- col.// -->
        <!--START COLLECTION-->
        <div class="page-content">
            <div class="container">
                <div class="product-content row" style="display: flex; justify-content: left;">
                    <c:forEach items="${requestScope.listMouse}" var="product">
                        <div class="col-lg-3 col-md-4 col-sm-6" style="position: relative">
                            <div class="item-product-content" style="padding: 10px;margin-bottom: 20px">
                                <a href="detail?id=${product.product_id}" style="text-decoration: none; ">
                                    <div class="box_image">
                                        <div class="product_image">
                                            <c:if test="${product.sale_percent > 0}">
                                                <div class="badge text-white " style="position: absolute; top: 0.5rem; right: 0.5rem ;margin-left: 1rem;background-color: rgba(255, 60, 60, 1)">Sale</div>
                                            </c:if>
                                            <img width="100%" height="286px" style="object-fit: contain" src="${product.img}" alt="${product.product_name}" sizes="(max-width: 300px) 100vw, 300px"/>
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
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <div class="paging_menu" style="display: flex;justify-content: center; margin: 20px 0px">
            <%--For displaying Previous link except for the 1st page --%>
            <c:if test="${currentPage != 1}">
                <td><a href="mouse?page=${currentPage - 1}"><i class="fa-solid fa-chevron-left" style="color: #000000;"></i></a></td>
                    </c:if>

            <%--For displaying Page numbers. The when condition does not display
                        a link for the current page--%>

            <table style=" margin: 0px 5px 13px">
                <tr>
                    <c:forEach begin="1" end="${noOfPages}" var="i">
                        <c:choose>
                            <c:when test="${currentPage eq i}">
                                <td style="margin: 10px 10px">${i}/${noOfPages}</td>
                            </c:when>

                        </c:choose>
                    </c:forEach>
                </tr>
            </table>

            <%--For displaying Next link --%>

            <c:if test="${currentPage lt noOfPages}">
                <td><a href="mouse?page=${currentPage + 1}"><i class="fa-solid fa-chevron-right" style="color: #000000;"></i></a></td>
                    </c:if>
        </div>
    </body>
</html>
