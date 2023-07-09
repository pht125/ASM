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
        <title>Cart</title>

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

        .product_content{
            display: flex;
        }

        .product_content img{
            margin-right: 10px;
        }

        .product_content div{
            width: 100%;
        }

        .product_table_row{
            border: none;
        }
        .product_table_row td{
            border: none;
        }

        .button-34 {
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
        <div class="container px-3 my-5 clearfix">
            <!-- Shopping cart table -->
            <div class="card">
                <div class="card-header">
                    <h2>Shopping Cart</h2>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table " style="border: 1px solid rgba(225, 225, 225, 1)">
                            <thead>

                                <tr>
                                    <!-- Set columns width -->
                                    <th class="text-center py-3 px-4" style="min-width: 310px;text-align: center">Product Name &amp; Details</th>
                                    <th class="text-right py-3 px-4" style="width: 100px;text-align: center">Quantity</th>
                                    <th class="text-center py-3 px-4" style="width: 150px;text-align: center">Price</th>
                                    <th class="text-right py-3 px-4" style="width: 150px;text-align: center">Total</th>
                                    <th class="" style="width: 40px;visibility: hidden"><a href="#" class="shop-tooltip float-none text-light" title="" data-original-title="Clear cart"></a></th>
                                </tr>

                            </thead>
                            <c:set var="o" value="${requestScope.cart}"/>

                            <tbody>
                                <c:forEach var="p" items="${o.items}" varStatus="loop">

                                    <tr class="product_table_row">
                                        <td class="id-product" style="display: none;">${p.product.product_id}</td>
                                        <td class="p-4">
                                            <div class="media align-items-center product_content">
                                                <img src="${p.product.img}" class="d-block ui-w-40 ui-bordered mr-4" alt="${p.product.product_name}">
                                                <div class="media-body">
                                                    <input readonly="" style="border: none;width: 100%;" class="d-block text-dark" id="product_name" value="${p.product.product_name}" />
                                                </div>
                                            </div>
                                        </td>
                                        <td style="display: flex;justify-content: space-around;text-align: center; height: 100%;position: relative">
                                            <div style="width: 80%;display: flex;justify-content: space-around;text-align: center;position: absolute;top: 30px">
                                                <a href="process?num=-1&id=${p.product.product_id}"><i class="fa-solid fa-minus"></i></a>
                                                    ${p.quantity}
                                                <a href="process?num=1&id=${p.product.product_id}"><i class="fa-solid fa-plus"></i></a>
                                            </div>
                                        </td>
                                        <td class="text-right font-weight-semibold align-middle p-4" id="priceitem" style="text-align: center"><fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "0" value = "${p.price}" /></td>

                                        <td class="text-right font-weight-semibold align-middle p-4 pricesum"  style="text-align: center"><fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "0" value = "${(p.price*p.quantity)}" /></td>
                                        <td class="text-center align-middle px-0" style="text-align: center;margin-right: 10px">
                                            <a href="process?num=-${p.quantity}&id=${p.product.product_id}"><i class="fa-solid fa-trash" style="color: #d12323;"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- / Shopping cart table -->

                    <div class="" style="text-align: right">

                        <div style="margin-right: 40px">
                            <h5>Total price</h5>
                        </div>
                        <div>
                            <input readonly="" style="border: none;margin-left: 10px;width: 10%" class="text-large" id="totalprice" value="<fmt:formatNumber type = "number" 
                                              maxFractionDigits = "0" value = "${o.totalPrice}" />"/>
                        </div>

                    </div>
                    <div class="" style="display: flex; justify-content: space-between;margin-top: 20px">
                        <a href="home" style="margin-left: 20px;text-decoration: none;color:rgba(50, 50, 50, 1)"><h6 style="font-size: larger">Back to shopping</h6></a>
                        
                            <form class="" action="checkout" method="post" style="margin-right: 20px;">
                                <button type="submit" class="button-34">Checkout</button>
                            </form>
                        

                    </div>
                </div>
            </div>
        </div>
        <div class="header_home" >
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
