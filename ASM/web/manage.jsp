<%-- 
    Document   : search
    Created on : Jun 28, 2023, 11:27:23 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Product</title>
        <link rel="stylesheet" href="css/keeb_homestyle.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
    </head>
    <style>
        body{
            margin: 0;
        }
        .banner{
            width: 100%;
        }

        .banner img{
            width: 100%;
            height: 600px;
            object-fit: cover;
        }

        .banner_desc_info{
            background: rgba(29, 29, 29, 0.7);
            position: relative;
            top: -300px;
            left: 50px;
            width: 50%;
            height: auto;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;

            border-radius: 10px;
            padding: 10px;
        }

        .banner_desc_info h1{
            color: white;
            margin-left: 10px;
        }
        .banner_desc_info p{
            width: 90%;
            color: white;
            margin: 10px;

        }

        .product-content{
            display: flex;
            justify-content: left;
        }

        .item-product{
            padding-left: calc(var(--bs-gutter-x) * 2);
            padding-right: calc(var(--bs-gutter-x) * 5);
        }

        .box_image{
            overflow: hidden;
        }

        .product_image img{
            object-fit: cover;
            transition: transform 0.8s;
            cursor: pointer;
            overflow: hidden;
        }

        .product_image:hover{
            transform: scale(1.05);
        }

        .button-add {
            appearance: none;
            background-color: #2ea44f;
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

        .button-add:focus:not(:focus-visible):not(.focus-visible) {
            box-shadow: none;
            outline: none;
        }

        .button-add:hover {
            background-color: #2c974b;
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

        a{
            text-decoration: none;

        }

        table_row tr:hover{
            background: black;
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
        <div style="display: flex;justify-content: space-between;margin: 30px 0">

            <p style="position: absolute;left: 200px;top: 35px;font-weight: bold">${sessionScope.acc.name}</p>
            <div style="width: 10%;margin-left: 20px">
                <div style="display: flex; justify-content: center; background-color: rgb(50,50,50); align-items:  center;padding: 5px;border-radius: 30px">
                    <a style="color:white" class="" href="logout">Log out</a>
                </div>
            </div>
            <div style="width: 10%;margin-left: 20px">
                <div style="display: flex; justify-content: center; background-color: #2ea44f; align-items:  center;padding: 5px;border-radius: 30px">
                    <a style="color:white" href="manageBill?id=0">Manage Bill</a>
                </div>
            </div>
        </div>
        <div class="header_title_row dropdown" style="display: flex; justify-content: left;position: relative;left: 20px">
            <a onclick="DropPro(this)" class="dropdown_button account_icon" style="text-decoration: none"><i class="fa-solid fa-bars fa-xl"></i></a>
            <div id="myDropdownPro" class="dropdown_content" style="position: absolute;left: 20px;top: 0px">
                <a class="dropdown_menu_content" href="manage?id=0">All</a>
                <a class="dropdown_menu_content" href="manage?id=1">Bàn phím</a>
                <a class="dropdown_menu_content" href="manage?id=2">Chuột</a>
                <a class="dropdown_menu_content" href="manage?id=3">Lót chuột</a>
                <a class="dropdown_menu_content" href="manage?id=4">Switch</a>
            </div>
        </div>
        <c:if test="${sessionScope.acc.role == 1}">
            <button class="button-add" style="position: absolute; top: 150px;right:83px"><a style="text-decoration: none;color:white" href="addProduct.jsp">Add product</a></button>
        </c:if>
        <div style="display: flex;justify-content: center">
            <table class="table" style="width: 90%;">
                <thead>
                    <tr style="height: 200px;text-align: center">
                        <th scope="col" style="width: 40px">CategoryID</th>
                        <th scope="col" style="width: 40px">ProductID</th>
                        <th scope="col" style="width: 400px">Name</th>
                        <th scope="col" style="width: 200px">Brand</th>
                        <th scope="col" style="width: 200px">Price</th>
                        <th scope="col" style="width: 50px">Sale</th>
                        <th scope="col" style="width: 50px">Quantity</th>

                    </tr>
                </thead>
                <tbody class="table_row">
                    <c:forEach items="${requestScope.listAll}" var="o">

                        <tr  style="text-align: center;">
                            <td >${o.cate_id}</td>
                            <td>${o.product_id}</td>
                            <td>${o.product_name}</td>
                            <td>${o.brand}</td>
                            <td>${o.price}</td>
                            <td>${o.sale_percent}</td>
                            <td>${o.quantity}</td>
                            <td><button type="submit" class="button-3" onclick="showMess('${o.product_id}')"><a style="text-decoration: none;color:white" href="#" >Delete</a></button></td>
                            <td><button type="submit" class="button-update"><a style="text-decoration: none;color:white" href="updateProduct?id=${o.product_id}">Update</a></button></td>
                        </tr> 

                    </c:forEach>
                </tbody>
            </table>
        </div>

    </body>
    <script type="text/javascript">
        function showMess(id) {
            if (confirm("Are you sure to delete?")) {
                window.location = "deleteProduct?id=" + id;
            }
        }
        function DropPro(element) {
            element.classList.toggle("active");
            var x = document.getElementById("myDropdownPro");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
        }
    </script>
</html>
