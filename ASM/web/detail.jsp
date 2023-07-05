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
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
    </head>
    <style>

    </style>
    <body>
        <div class="header_home" >
            <%@include file="header.jsp" %>
        </div>
        <div class="row">

            <div class="">
                <div class="container" style="margin-top: 12px;margin-bottom: 12px;max-width: 100%;">
                    <div class="card">
                        <div class="row">
                            <aside class="col-sm-5 border-right">
                                <article class="gallery-wrap">
                                    <div class="img-big-wrap">
                                        <div><img style="width: 100%;height: 607px;object-fit: cover;" src="${detail.img}"></div>
                                    </div> <!-- slider-product.// -->
                                    <div class="img-small-wrap">
                                    </div> <!-- slider-nav.// -->
                                </article> <!-- gallery-wrap .end// -->
                            </aside>
                            <aside class="col-sm-7">
                                <article class="card-body p-5">
                                    <h3 class="title mb-3">${detail.product_name}</h3>

                                    <p class="price-detail-wrap">
                                        <span class=" h3 text-warning">
                                            <c:if test="${detail.sale_percent == 0}">
                                                <div  style="display: flex;">
                                                    <h5 style="color: rgba(255, 70, 70, 1)"><fmt:formatNumber type = "number" 
                                                                      maxFractionDigits = "0" value = "${detail.price}" /><h6 style="margin-left:3px;color: rgba(255, 70, 70, 1)"> đ</h6></h5>

                                                </div>
                                            </c:if>
                                            <c:if test="${detail.sale_percent > 0}">
                                                <div class="price" style="display: flex;">
                                                    <h5 style="color: rgba(255, 70, 70, 1)"><fmt:formatNumber type = "number" 
                                                                      maxFractionDigits = "0" value = "${(detail.price * (100 - detail.sale_percent) / 100)}" /><h6 style="margin-left:3px;color: rgba(255, 70, 70, 1)"> đ</h6>&nbsp&nbsp</h5>

                                                    <h5 style="text-decoration: line-through; color: rgba(90, 90, 90, 0.5);"><fmt:formatNumber type = "number" 
                                                                      maxFractionDigits = "0" value = "${detail.price}" /><h6 style="margin-left:3px; color: rgba(90, 90, 90, 0.5)"> đ</h6></h5>

                                                </div>
                                            </c:if>
                                        </span>
                                    </p> <!-- price-detail-wrap .// -->
                                    <dl class="item-property">
                                        <dt>Description</dt>
                                        <dd>
                                            <p>
                                                ${detail.description}
                                            </p>
                                        </dd>
                                    </dl>

                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <dl class="param param-inline">
                                                <dt>Quantity: </dt>
                                                <dd>
                                                    <select class="form-control form-control-sm"
                                                            style="width:70px;">
                                                        <option> 1 </option>
                                                        <option> 2 </option>
                                                        <option> 3 </option>
                                                    </select>
                                                </dd>
                                            </dl> <!-- item-property .// -->
                                        </div> <!-- col.// -->

                                    </div> <!-- row.// -->
                                    <hr>
                                    <a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>
<!--                                    <input type="hidden" name="id" value="${detail.product_id}">-->
                                    <a href="addCart?id=${detail.product_id}" class="btn btn-lg btn-outline-primary text-uppercase"> <i
                                            class="fas fa-shopping-cart"></i> Add to cart </a>
                                </article> <!-- card-body.// -->
                            </aside> <!-- col.// -->
                        </div> <!-- row.// -->
                    </div> <!-- card.// -->

                </div>
            </div>
        </div>
        <div class="header_home" >
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
