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
        <title>Checkout</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/checkout.css?v=51"/>
    </head>
    <style>
        body{
            background-color: #f6f6f6;
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
        .button-cancel {
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

        .button-cancel:hover,
        .button-cancel:focus {
            background-color: rgba(50, 50, 50, 1);
            color: #ffffff;
        }

        #input_text{
            border: none;
            background-color: rgba(245, 245, 245, 0.8);
        }
        #input_phone{
            border: none;
            background-color: rgba(245, 245, 245, 0.8);
        }
        #input_add{
            border: none;
            background-color: rgba(245, 245, 245, 0.8);
            resize: none;
        }
    </style>
    <body>
        <main class="" style="margin-top: 50px;display: flex;justify-content: center;margin-bottom: 50px;border-radius: 10px">
            <section class="" style="background-color: rgba(225, 225, 225, 0.6);width: 500px;padding: 20px;border-top: 1px solid black">
                <div style="position: relative">
                    <form id="checkout_form" action="purchase">
                        <div class="products">
                            <h3 class="title">Checkout</h3>
                            <c:set var="o" value="${requestScope.cart}"/>
                            <c:forEach var="p" items="${o.items}" varStatus="loop">

                                <div class="item" style="display: flex;justify-content: space-between">
                                    <div style="width: 70%">
                                        <!--<input readonly="" style="border: none;width: 100%;background-color: #f7fbff" class="d-block text-dark item-name" id="product_name" value="" />-->
                                        <p style="font-weight: bolder;">${p.product.product_name}</p>
                                        <h6>x${p.quantity}</h6>
                                    </div>
                                    <div>
                                        <td class="text-right font-weight-semibold align-middle p-4 pricesum"><fmt:formatNumber type = "number" 
                                                          maxFractionDigits = "0" value = "${(p.price*p.quantity)}" /></td>
                                    </div>

                                </div>
                                <hr>
                            </c:forEach>
                            <div style="text-align: right">
                                <h4 class="title" style="margin-right: 30px; border-bottom: none;">Total</h4>
                                <div style="display: flex;justify-content: right">
                                    <h5 style="margin-right: 3px"><fmt:formatNumber type = "number" 
                                                      maxFractionDigits = "0" value = "${o.totalPrice}" /><h6 style="margin-left:3px; color: rgba(90, 90, 90, 0.5);font-size: larger"> đ</h6></h5>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h3 class="title">Delivery Information</h3>
                    </form>
                    <div style="width: 100%;display: flex;justify-content: space-around">
                        <!--<button onclick="myFunction()">Edit</button>-->
                        <form action="updatecheckout" method="post" id="update_form" style="width: 80%;background-color: rgba(245, 245, 245, 0.8);padding: 10px;border-radius: 15px">
                            <input hidden="" name="id" type="text" value="${sessionScope.acc.account_id}" />
                            <div style="width: 100%">
                                <label style="width: 15%">Name</label>
                                <input style="width: 85%" id="input_text" name="name" type="text" value="${sessionScope.acc.name}" readonly="readonly"/>
                            </div>

                            <div style="width: 100%">
                                <label style="width: 15%">Phone</label>
                                <input style="width: 85%" id="input_phone" name="phone" type="text" value="${sessionScope.acc.phone}" readonly="readonly"/>
                            </div>

                            <div style="width: 100%">
                                <label style="width: 15%">Address</label>
                                <textarea style="width: 85%" id="input_add" name="address" type="text" readonly="readonly">${sessionScope.acc.address}</textarea>
                            </div>

                        </form>
                        <div style="width: 15%">
                            <a style="margin-left: 40%"><i onclick="myFunction()" class="fa-solid fa-edit" style="color: #d12323;cursor: pointer"></i></a>
                            <!--<input style="margin-top: 125px" type="submit" form="update_form" value="Save">-->
                            <button id="save_update" hidden="hidden" form="update_form" type="submit" class="button-34" style="padding: 0 20px;margin-top: 125px"><a style="text-decoration: none;color: white">Save</a></button>
                        </div>
                    </div>
                    <!--                    <div style="display: flex;justify-content: center;position: absolute">
                    
                                            <div class="form-group col-sm-12" style="background-color: rgba(233, 233, 233, 1);border-radius: 20px;padding: 10px 30px 20px; bottom: -225.6px;left: auto;max-width: 544px " >
                    
                                                <a style="position: absolute;right: 20px"><i onclick="inputReadonly()" class="fa-solid fa-edit" style="color: #d12323;"></i></a>
                    
                                            </div>
                                        </div>-->

                    <div class="card-details">
                        <div class="row" style="display: flex;justify-content: space-evenly">
                            <div class="col-sm-12" style="display: flex;justify-content: space-between; margin-top: 20px">
                                <div class="form-group col-sm-6" >
                                    <button class="button-cancel" style="padding: 0 20px"><a href="show" style="text-decoration: none;color: white">Cancel</a></button>
                                </div>
                                <div class="form-group col-sm-6" style="text-align: right">
                                    <button form="checkout_form" type="submit" class="button-34" style="padding: 0 20px"><a href="purchase" style="text-decoration: none;color: white">Purchase</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </body>
    <script>
        function myFunction() {
            document.getElementById('input_text').removeAttribute('readonly');
            document.getElementById('input_phone').removeAttribute('readonly');
            document.getElementById('input_add').removeAttribute('readonly');
            document.getElementById('save_update').removeAttribute('hidden');
        }
    </script>
</html>
