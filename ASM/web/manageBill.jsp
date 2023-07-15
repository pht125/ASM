<%-- 
    Document   : manageBill
    Created on : Jul 14, 2023, 9:28:50 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Order</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
    </head>
    <style>
        a{
            text-decoration: none;
        }

        .menu_item:active{
            color: black
        }

        .button-update {
            appearance: none;
            background-color: #003EC4;
            border: 1px solid rgba(27, 31, 35, .15);
            border-radius: 6px;
            box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
            box-sizing: border-box;
            color: #fff;
            cursor: pointer;
            display: inline-block;
            font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
            font-size: 14px;
            font-weight: 600;
            line-height: 20px;
            padding: 6px 16px;
            position: relative;
            text-align: center;
            text-decoration: none;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            white-space: nowrap;
        }

        .button-update:focus:not(:focus-visible):not(.focus-visible) {
            box-shadow: none;
            outline: none;
        }

        .button-update:hover {
            background-color: #020A97;
        }

        .button-3 {
            appearance: none;
            background-color: #E00606;
            border: 1px solid rgba(27, 31, 35, .15);
            border-radius: 6px;
            box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
            box-sizing: border-box;
            color: #fff;
            cursor: pointer;
            display: inline-block;
            font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
            font-size: 14px;
            font-weight: 600;
            line-height: 20px;
            padding: 6px 16px;
            position: relative;
            text-align: center;
            text-decoration: none;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            white-space: nowrap;
        }

        .button-3:focus:not(:focus-visible):not(.focus-visible) {
            box-shadow: none;
            outline: none;
        }

        .button-3:hover {
            background-color: #971B1B;
        }
        .dropdown_button {
            /*background-color: #3498DB;*/
            /*color: white;*/
            /*padding: 16px;*/
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropdown_button:hover, .dropdown_button:focus {
            background-color: #2980B9;
            text-decoration: none;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown_content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            /*            min-width: 160px;
                        overflow: auto;
                        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);*/
            z-index: 1;
            top: 100px;
            left: 70px;
        }

        .dropdown_content a {
            color: black;
            /*padding: 12px 16px;*/
            text-decoration: none;
            display: block;
            margin: 0;
        }

        .dropdown a:hover {
            background-color: #ddd;
        }

        .dropdown_menu_content{
            text-align: center;
            padding: 10px 20px ;
        }
    </style>
    <body>

        <!--------->
        <div style="display: flex;justify-content: space-between;margin: 30px 0">

            <p style="position: absolute;left: 200px;top: 35px;font-weight: bold">${sessionScope.acc.name}</p>
            <div style="width: 10%;margin-left: 20px">
                <div style="display: flex; justify-content: center; background-color: rgb(50,50,50); align-items:  center;padding: 5px;border-radius: 30px">
                    <a style="color:white" class="" href="logout">Log out</a>
                </div>
            </div>
            <div style="width: 10%;margin-left: 20px">
                <div style="display: flex; justify-content: center; background-color: #2ea44f; align-items:  center;padding: 5px;border-radius: 30px">
                    <a style="color:white" href="manage?id=0">Manage Product</a>
                </div>
            </div>
        </div>
        <div class="header_title_row dropdown" style="display: flex; justify-content: left;position: relative;left: 20px">
            <a onclick="DropPro(this)" class="dropdown_button account_icon" style="text-decoration: none"><i class="fa-solid fa-bars fa-xl"></i></a>
            <div id="myDropdownBill" class="dropdown_content" style="position: absolute;left: 20px;top: 0px">
                <a class="dropdown_menu_content" href="manageBill?id=0">All</a>
                <a class="dropdown_menu_content" href="manageBill?id=1">Processing</a>
                <a class="dropdown_menu_content" href="manageBill?id=2">Delivering</a>
                <a class="dropdown_menu_content" href="manageBill?id=3">Canceled</a>
                <a class="dropdown_menu_content" href="manageBill?id=4">Delivered</a>
            </div>
        </div>
        <!-------->
        <div style="display: flex;justify-content: center">
            <table class="table" style="width: 80%;">
                <thead>
                    <tr>
                        <th scope="col" style="width: 50px">Acc.Id</th>
                        <th scope="col" style="width: 200px">Order Date</th>
                        <th scope="col" style="width: 400px">Address</th>
                        <th scope="col" style="width: 200px">Total Price</th>
                        <th scope="col" style="width: 200px">Status</th>
                    </tr>
                </thead>
                <tbody class="table_row">
                    <c:forEach items="${sessionScope.listBillDetail}" var="o">
                        <tr>
                            <td>${o.account_id}</td>
                            <td>${o.order_date}</td>
                            <td>${o.address}</td>
                            <td>${o.total_price}</td>
                            <c:if test="${o.status == 1}">
                                <td style="color: rgba(255, 170, 0, 0.8)">Processing</td>
                                <td><button type="submit" class="button-3" onclick="showAlert('${o.account_id}', '${o.bill_id}')"><a style="text-decoration: none;color:white" href="#" >Cancel</a></button></td>
                                <td ><button type="submit" class="button-update"><a style="text-decoration: none;color:white" href="proceedBill?id=${o.account_id}&bill_id=${o.bill_id}">Proceed</a></button></td>
                            </c:if>
                            <c:if test="${o.status == 2}">
                                <td style="color: rgba(23, 59, 255, 0.8)">Delivering</td>
                                <td><button type="submit" class="button-3" onclick="showAlert('${o.account_id}', '${o.bill_id}')"><a style="text-decoration: none;color:white" href="#" >Cancel</a></button></td>
                            </c:if>
                            <c:if test="${o.status == 3}">
                                <td style="color:rgba(255, 23, 23, 0.8)">Canceled</td>
                            </c:if>
                            <c:if test="${o.status == 4}">
                                <td style="color: rgba(10, 208, 0, 0.8)">Delivered</td>
                            </c:if>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
    <script type="text/javascript">
        function showAlert(account_id, bill_id) {
            if (confirm("Are you sure to cancel this order?")) {
                window.location = "cancelBillAd?id=" + account_id + "&bill_id=" + bill_id;
            }
        }
        function DropPro(element) {
            element.classList.toggle("active");
            var x = document.getElementById("myDropdownBill");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</html>
