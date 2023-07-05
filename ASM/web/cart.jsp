<%-- 
    Document   : cart
    Created on : Jul 5, 2023, 3:28:04 PM
    Author     : Admin
--%>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        body{
            margin-top:20px;
            background:#eee;
        }
        .ui-w-40 {
            width: 40px !important;
            height: auto;
        }

        .card{
            box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
        }

        .ui-product-color {
            display: inline-block;
            overflow: hidden;
            margin: .144em;
            width: .875rem;
            height: .875rem;
            border-radius: 10rem;
            -webkit-box-shadow: 0 0 0 1px rgba(0,0,0,0.15) inset;
            box-shadow: 0 0 0 1px rgba(0,0,0,0.15) inset;
            vertical-align: middle;
        }
    </style>
    <body>
        
        <div class="header_home" >
            <%@include file="header.jsp" %>
        </div>
        <div class="container px-3 my-5 clearfix">
            <!-- Shopping cart table -->
            <div class="card">
                <div class="card-header">
                    <h2>Shopping Cart</h2>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered m-0">
                            <thead>

                                <tr>
                                    <!-- Set columns width -->
                                    <th class="text-center py-3 px-4" style="min-width: 400px;">Product Name &amp; Details</th>
                                    <th class="text-right py-3 px-4" style="width: 100px;">Price</th>
                                    <th class="text-center py-3 px-4" style="width: 120px;">Quantity</th>
                                    <th class="text-right py-3 px-4" style="width: 100px;">Total</th>
                                    <th class="text-center align-middle py-3 px-0" style="width: 40px;"><a href="#" class="shop-tooltip float-none text-light" title="" data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a></th>
                                </tr>

                            </thead>
                            <tbody>
                                <c:forEach var="p" items="${sessionScope.list_cart}" varStatus="loop">
                                    <tr>
                                        <td class="p-4">
                                            <div class="media align-items-center">
                                                <img src="${p.img}" class="d-block ui-w-40 ui-bordered mr-4" alt="${p.product_name}">
                                                <div class="media-body">
                                                    <a href="#" class="d-block text-dark">${p.product_name}</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-right font-weight-semibold align-middle p-4" id="priceitem"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${(p.price * (100 - p.sale_percent) / 100)}" /></td>
                                        <td class="align-middle p-4"><input type="text" class="form-control text-center" value="1" name="quantity"></td>
                                        <td class="text-right font-weight-semibold align-middle p-4" id="pricesum"><fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${((p.price * (100 - p.sale_percent) / 100)*p.quantity)}" /></td>
                                            <td class="text-center align-middle px-0"><a href="removecart?id=${loop.index}" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove" style="text-decoration: none">×</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- / Shopping cart table -->

                    <div class="d-flex flex-wrap align-items-center pb-4" style="justify-content: right">

                        <div class="d-flex" >
                            <div class="text-right mt-4">
                                <label class="text-muted font-weight-normal m-0">Total price</label>
                                <div class="text-large" id="totalprice"><strong>$1164.65</strong></div>
                            </div>
                        </div>
                    </div>

                    <div class="float-right">
                        <button type="button" class="btn btn-lg btn-default md-btn-flat mt-2 mr-3">Back to shopping</button>
                        <button type="button" class="btn btn-lg btn-primary mt-2">Checkout</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="header_home" >
            <%@include file="footer.jsp" %>
        </div>
        <script>
            
        </script>
        
    </body>
</html>
