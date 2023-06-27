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
    </head>
    <body>
        <div class="row">

            <div class="col-sm-9">
                <div class="container">
                    <div class="card">
                        <div class="row">
                            <aside class="col-sm-5 border-right">
                                <article class="gallery-wrap">
                                    <div class="img-big-wrap">
                                        <div> <a href="#"><img src="${detail.img}"></a></div>
                                    </div> <!-- slider-product.// -->
                                    <div class="img-small-wrap">
                                    </div> <!-- slider-nav.// -->
                                </article> <!-- gallery-wrap .end// -->
                            </aside>
                            <aside class="col-sm-7">
                                <article class="card-body p-5">
                                    <h3 class="title mb-3">${detail.product_name}</h3>

                                    <p class="price-detail-wrap">
                                        <span class="price h3 text-warning">
                                            <span class="num">${detail.price}</span>
                                            <span class="currency">đ</span>
                                            
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
                                    <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i
                                            class="fas fa-shopping-cart"></i> Add to cart </a>
                                </article> <!-- card-body.// -->
                            </aside> <!-- col.// -->
                        </div> <!-- row.// -->
                    </div> <!-- card.// -->


                </div>
            </div>
        </div>
    </body>
</html>
