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
    <body onload="total()">

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
                                        <td class="id-product" style="display: none;">${p.product_id}</td>
                                        <td class="p-4">
                                            <div class="media align-items-center">
                                                <img src="${p.img}" class="d-block ui-w-40 ui-bordered mr-4" alt="${p.product_name}">
                                                <div class="media-body">
                                                    <input readonly="" style="border: none;width: 100%;" class="d-block text-dark" id="product_name" value="${p.product_name}" />
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-right font-weight-semibold align-middle p-4" id="priceitem">${p.price}</td>
                                        <td class="align-middle p-4">
                                            <input type="number" class="form-control text-center quantity" value="${sessionScope.list_numb.get(loop.index)}" name="quantity" id="quantity" min="1" onchange="changeQuantity(this)">
                                        </td>
                                        <td class="text-right font-weight-semibold align-middle p-4 pricesum">${p.price*sessionScope.list_numb.get(loop.index)}</td>
                                        <td class="text-center align-middle px-0" ><a href="removecart?id=${loop.index}" class="shop-tooltip close float-none text-danger" title="" data-original-title="Remove" style="text-decoration: none">×</a></td>
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
                                <!--                                <div class="text-large" id="totalprice""></div>-->
                                <input readonly="" style="border: none;text-align: right" class="text-large" id="totalprice" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="float-right">
                        <button type="button" class="btn btn-lg btn-default md-btn-flat mt-2 mr-3"><a href="home">Back to shopping</a></button>
                        <button type="button" class="btn btn-lg btn-primary mt-2" ><a href="checkout.jsp">Checkout</a></button>
                    </div>

                </div>
            </div>
        </div>
        <div class="header_home" >
            <%@include file="footer.jsp" %>
        </div>
<!--        <script>
            function loadPrice(element) {
                let n = document.getElementsByClassName("pricesum").length;
                var totalPrice = 0;
                for (i = 0; i < n; ++i) {
                    totalPrice = totalPrice + parseInt(document.getElementsByClassName("pricesum")[i].innerHTML);
                }
                document.getElementById("totalprice").value = totalPrice;
            }
            function changeQuantity(element) {
                var parent = element.parentElement;
//                var quantity = document.getElementById("quantity").value;
//                var priceitem = document.getElementById("priceitem").innerHTML;
//                var price = parseInt(quantity) * priceitem;
                var priceItem = parent.previousElementSibling.innerHTML;
                var quantity = element.value;
                var total = priceItem * quantity;
                parent.nextElementSibling.innerHTML = total;


//                document.getElementById('pricesum').innerHTML = price;

//                var nextquantity = quantity.nextElementSibling;
//                var nextpriceitem = priceitem.nextElementSibling;
//                var nextprice = nextquantity * nextpriceitem;
//                document.getElementById('pricesum').innerHTML = nextprice;
                let n = document.getElementsByClassName("pricesum").length;
                var totalPrice = 0;
                for (i = 0; i < n; ++i) {
                    totalPrice = totalPrice + parseInt(document.getElementsByClassName("pricesum")[i].innerHTML);
                }
                document.getElementById("totalprice").value = totalPrice;
                document.cookie = "cart=; expires=Thu, 01 Jan 1970 00:00:00 UTC";
                document.cookie = "cartnumb=; expires=Thu, 01 Jan 1970 00:00:00 UTC";

                let n1 = document.getElementsByClassName("quantity").length;
                var cartnumb = '';
                for (i = 0; i < n1; ++i) {
                    cartnumb = cartnumb + document.getElementsByClassName("quantity")[i].value + '|';
                }

                let n2 = document.getElementsByClassName("id-product").length;
                var cart = '';
                for (i = 0; i < n2; ++i) {
                    cart = cart + document.getElementsByClassName("id-product")[i].innerHTML + '|';
                }
                setCookie('cart', cart, 365);
                setCookie('cartnumb', cartnumb, 365);
            }

            function setCookie(cname, cvalue, exdays) {
                const d = new Date();
                d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
                let expires = "expires=" + d.toUTCString();
                document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/ASM";
            }

            function total() {
                let n = document.getElementsByClassName("pricesum").length;
                var totalPrice = 0;
                for (i = 0; i < n; ++i) {
                    totalPrice = totalPrice + parseInt(document.getElementsByClassName("pricesum")[i].innerHTML);
                }
                document.getElementById("totalprice").value = totalPrice;
            }
        </script>-->
    </body>
</html>
