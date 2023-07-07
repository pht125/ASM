<%-- 
    Document   : checkout
    Created on : Jul 7, 2023, 2:03:12 AM
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
        <<link rel="stylesheet" href="css/checkout.css?v=51"/>
    </head>
    <body onload="total()">
        <main class="page payment-page">
            <section class="payment-form dark">
                <div class="container">
                    <div class="block-heading">
                        <h2>Payment</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
                    </div>
                    <form>
                        <div class="products">
                            <h3 class="title">Checkout</h3>
                            <c:forEach var="p" items="${sessionScope.list_cart}" varStatus="loop">
                                <div class="item">
                                    <td class="text-right font-weight-semibold align-middle p-4 pricesum">${p.price*sessionScope.list_numb.get(loop.index)}</td>
                                    <input readonly="" style="border: none;width: 100%;" class="d-block text-dark item-name" id="product_name" value="${p.product_name}" />
                                    <input style="border: none;background-color: #f6f6f6" type="number" class="form-control text-center quantity item-description" value="${sessionScope.list_numb.get(loop.index)}" name="quantity" id="quantity" min="1" readonly="" >
                                </div>
                            </c:forEach>
                            <input type="number" readonly="" style="border: none;text-align: right" class="text-large total" id="totalprice" value=""/>
                        </div>
                        <div class="card-details">
                            <h3 class="title">Credit Card Details</h3>
                            <div class="row">
                                <div class="form-group col-sm-7">
                                    <label for="card-holder">Card Holder</label>
                                    <input id="card-holder" type="text" class="form-control" placeholder="Card Holder" aria-label="Card Holder" aria-describedby="basic-addon1">
                                </div>
                                <div class="form-group col-sm-5">
                                    <label for="">Expiration Date</label>
                                    <div class="input-group expiration-date">
                                        <input type="text" class="form-control" placeholder="MM" aria-label="MM" aria-describedby="basic-addon1">
                                        <span class="date-separator">/</span>
                                        <input type="text" class="form-control" placeholder="YY" aria-label="YY" aria-describedby="basic-addon1">
                                    </div>
                                </div>
                                <div class="form-group col-sm-8">
                                    <label for="card-number">Card Number</label>
                                    <input id="card-number" type="text" class="form-control" placeholder="Card Number" aria-label="Card Holder" aria-describedby="basic-addon1">
                                </div>
                                <div class="form-group col-sm-4">
                                    <label for="cvc">CVC</label>
                                    <input id="cvc" type="text" class="form-control" placeholder="CVC" aria-label="Card Holder" aria-describedby="basic-addon1">
                                </div>
                                <div class="form-group col-sm-12">
                                    <button type="button" class="btn btn-primary btn-block">Proceed</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </main>

        <script>
            function loadPrice(element) {
                let n = document.getElementsByClassName("pricesum").length;
                var totalPrice = 0;
                for (i = 0; i < n; ++i) {
                    totalPrice = totalPrice + parseInt(document.getElementsByClassName("pricesum")[i].innerHTML);
                }
                document.getElementById("totalprice").value = totalPrice;
            }
            function changeQuantity() {
                var parent = element.parentElement;
                var priceItem = parent.previousElementSibling.innerHTML;
                var quantity = element.value;
                var total = priceItem * quantity;
                parent.nextElementSibling.innerHTML = total;
                let n = document.getElementsByClassName("pricesum").length;
                var totalPrice = 0;
                for (i = 0; i < n; ++i) {
                    totalPrice = totalPrice + parseInt(document.getElementsByClassName("pricesum")[i].innerHTML);
                }
                document.getElementById("totalprice").value = totalPrice;
            }



            function total() {
                let n = document.getElementsByClassName("pricesum").length;
                var totalPrice = 0;
                for (i = 0; i < n; ++i) {
                    totalPrice = totalPrice + parseInt(document.getElementsByClassName("pricesum")[i].innerHTML);
                }
                document.getElementById("totalprice").value = totalPrice;
            }
        </script>
    </body>
</html>
