<%-- 
    Document   : keeb_home
    Created on : Jun 18, 2023, 10:05:00 PM
    Author     : Admin
--%>

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
    <body>
        <!--START HEADER-->
        <div>
            <%@include file="header.jsp" %>
        </div>
        <!--END HEADER-->
        <!--START DESCRIPTION BANNER-->
        <div class="banner">
            <<img class="banner_img" src="https://cdn.shopify.com/s/files/1/0636/9044/0949/collections/Ban-phim-co.png?v=1676875156&width=1000" alt="alt"/>
            <div class="banner_desc_info">
                <h3>
                    Bàn Phím
                </h3>
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
        <div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

            <!-- First Photo Grid-->
            <div class="w3-row-padding w3-padding-16 w3-center row-product" id="food">
                <!-- <div class="product w3-center" id="food"></div> -->
                <c:forEach items="${data}" var="item" varStatus="loop">
                    <c:if test="${loop.index < 4}">
                        <div class="w3-quarter session-product">
                            <img class="img" src="${item.image}" alt="" style="width:100%">
                            <div>
                                <h3>${item.name}</h3>
                                <c:if test="${item.description == ''}">
                                    <p style="margin-top: 0px;">No description</p>
                                </c:if>
                                <p style="margin-top: 0px;"> ${item.description}</p>
                            </div>
                            <div class="price-addtocart">
                                <p class="text">${item.price}.000 ₫</p>
                                <form action="addtocart" method="post">
                                    <input name="productID" hidden value="${item.productID}"></input>
                                    <input type="submit" name="add" value="Add to cart"
                                           class="btn btn-addtocart">
                                </form>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>

            <!-- Second Photo Grid-->
            <div class="w3-row-padding w3-padding-16 w3-center row-product" id="food">
                <!-- <div class="product w3-center" id="food"></div> -->
                <c:forEach items="${data}" var="item" varStatus="loop">
                    <c:if test="${loop.index >= 4 && loop.index < 9}">
                        <div class="w3-quarter session-product">
                            <img class="img" src="${item.image}" alt="" style="width:100%">
                            <div>
                                <h3>${item.name}</h3>
                                <c:if test="${item.description == ''}">
                                    <p style="margin-top: 0px;">No description</p>
                                </c:if>
                                <p style="margin-top: 0px;"> ${item.description}</p>
                            </div>
                            <div class="price-addtocart">
                                <p class="text">${item.price}.000 ₫</p>
                                <form action="addtocart" method="post">
                                    <input name="productID" hidden value="${item.productID}"></input>
                                    <input type="submit" name="add" value="Add to cart"
                                           class="btn btn-addtocart">
                                </form>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>

            <!-- Pagination -->
            <div class="w3-center w3-padding-32">
                <div class="w3-bar">
                    <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
                    <a href="home?page=1" class="w3-bar-item w3-black w3-button">1</a>
                    <a href="home?page=2" class="w3-bar-item w3-button w3-hover-black">2</a>
                    <a href="home?page=3" class="w3-bar-item w3-button w3-hover-black">3</a>
                    <a href="home?page=4" class="w3-bar-item w3-button w3-hover-black">4</a>
                    <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
                </div>
            </div>
            <!--END COLLECTION-->
    </body>
</html>
