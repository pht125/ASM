<%-- 
    Document   : mycart
    Created on : Jul 7, 2023, 9:36:41 PM
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

        #product_name:focus{
            outline: none;
        }

        #totalprice:focus{
            outline: none;
        }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
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
                            <c:set var="o" value="${requestScope.cart}"/>

                            <tbody>
                                <c:forEach var="p" items="${o.items}" varStatus="loop">

                                    <tr>
                                        <td class="id-product" style="display: none;">${p.product.product_id}</td>
                                        <td class="p-4">
                                            <div class="media align-items-center">
                                                <img src="${p.product.img}" class="d-block ui-w-40 ui-bordered mr-4" alt="${p.product.product_name}">
                                                <div class="media-body">
                                                    <input readonly="" style="border: none;width: 100%;" class="d-block text-dark" id="product_name" value="${p.product.product_name}" />
                                                </div>
                                            </div>
                                        </td>
                                        <td>

                                            <button><a href="process?num=-1&id=${p.product.product_id}">-</a></button> 

                                            ${p.quantity}
                                            <button><a href="process?num=1&id=${p.product.product_id}">+</a></button>
                                        </td>
                                        <td class="text-right font-weight-semibold align-middle p-4" id="priceitem"><fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "0" value = "${p.price}" /></td>

                                        <td class="text-right font-weight-semibold align-middle p-4 pricesum"><fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "0" value = "${(p.price*p.quantity)}" /></td>
                                        <td class="text-center align-middle px-0" >
                                            <button><a href="process?num=-${p.quantity}&id=${p.product.product_id}">-</a></button> 
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- / Shopping cart table -->

                    <div class="d-flex flex-wrap align-items-center pb-4" style="justify-content: right">

                        <div class="d-flex" >
                            <div class="text-right mt-4">
                                <label class="text-muted font-weight-normal m-0">Total price</label><br/>

                                <input readonly="" style="border: none;text-align: right" class="text-large" id="totalprice" value="<fmt:formatNumber type = "number" 
                                                  maxFractionDigits = "0" value = "${o.totalPrice}" />"/>
                            </div>
                        </div>
                    </div>
                    <div class="float-right">
                        <button type="button" class="btn btn-lg btn-default md-btn-flat mt-2 mr-3"><a href="home">Back to shopping</a></button>
                        <form class="btn btn-lg btn-default md-btn-flat mt-2 mr-3" action="checkout" method="post">
                            <input type="submit" value="Checkout"/>
                        </form>
                    </div>
                    <!--                    <form action="checkout" method="post">
                                            <input type="submit" value="Checkout"/>
                                        </form>-->

                </div>
            </div>
        </div>
        <div class="header_home" >
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
