<%-- 
    Document   : accountinfo
    Created on : Jun 29, 2023, 5:35:09 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="fontawesome/css/all.css"/>
    </head>
    <style>
        body{
            margin: 0;

        }

        .outline_login_form{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        .outline_login{
            background-color: rgba(227, 227, 227, 0.59);
            margin-top: 80px;
            padding: 30px 0px;
            width: 40%;
            height: auto;
            border-radius: 20px;
        }

        .outline_login h1{
            display: flex;
            justify-content: center;
        }

        .login_form_input{
            width: 100%;

        }



        .inputBox input{
            width: calc((100%/12)*10);
            border-radius: 30px;
            border: none;
            height: 3rem;
            padding: 0 20px 0;
            margin: 10px;
        }

        .form-login {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
            text-align: center;
        }
        .form-login .checkbox {
            font-weight: 400;
        }

        .checkbox{
            text-align: match-parent;
            margin: 10px 0 20px;
        }
        .form-login .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }

        .form-login button {
            width: 10rem;
            height: 2rem;
            border-radius: 30px;
            margin-bottom: 20px;
            text-align: center;
            white-space: nowrap;
            cursor: pointer;
            background-color: rgba(60, 60, 60, 1);
            color: white;
            font-weight: bold;
        }

        .form-login button:hover{
            background-color: rgba(250, 250, 250, 1);
            color: black;

        }

        .signup{
            text-decoration: none;
            color: grey;
        }

        .signup:hover{
            color: red;
        }

        .input_title{
            margin-left: 20px
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
    </style>
    <body>
        <div>
            <%@include file="header.jsp" %>
        </div>
        <div class="outline_login_form">
            <div class="outline_login">
                <div class="login_form_input">
                    <h5 class="input_title">Name</h5>
                    <div class="inputBox" style="text-align: center;">
                        <input style="" readonly="" type="email" value="${sessionScope.acc.name}"/>
                    </div>
                    <h5 class="input_title">Address</h5>
                    <div class="inputBox" style="text-align: center;">
                        <input readonly="" type="email" value="${sessionScope.acc.address}"/>
                    </div>
                    <h5 class="input_title">Phone</h5>
                    <div class="inputBox" style="text-align: center;">
                        <input readonly="" type="email" value="${sessionScope.acc.phone}"/>
                    </div>

                </div>

                <div class="col-sm-12" style="display: flex;justify-content: space-between; margin-top: 20px">
                    <div class="form-group col-sm-6" >
                        <button type="submit" class="button-cancel" style="height: 48px; width: auto; margin-left: 50px; margin-top: 20px">
                            <a href="home" style="text-decoration: none; color: white">Back to home</a>
                        </button>
                    </div>
                    <div class="form-group col-sm-6" style="text-align: right">
                        <button type="submit" class="button-cancel" style="height: 48px; width: auto; margin-right: 50px; margin-top: 20px">
                            <a href="updateAcc?id=${sessionScope.acc.account_id}" style="text-decoration: none; color: white">Update Account</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
                        <div style="display: flex;justify-content: center;margin: 20px 0">
                            <h3 >Order</h3>
                        </div>
                        
        <div style="display: flex;justify-content: center">
            <table class="table" style="width: 50%;">
                <thead>
                    <tr>
                        <th scope="col" style="width: 40px">#</th>
                        <th scope="col" style="width: 200px">Order Date</th>
                        <th scope="col" style="width: 200px">Address</th>
                        <th scope="col" style="width: 200px">Total Price</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listBill}" var="o">
                        <tr>
                            <td>${o.bill_id}</td>
                            <td>${o.order_date}</td>
                            <td>${o.address}</td>
                            <td>${o.total_price}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
