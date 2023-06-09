<%-- 
    Document   : LoginPage
    Created on : Jun 4, 2023, 8:45:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Crimson+Pro"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <style>



            /*--------------------------*/
            body{
                margin: 0;

            }

            .outline_signup_form{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
            }

            .outline_signup{
                background-color: rgba(227, 227, 227, 0.59);
                margin-top: 80px;
                padding: 30px 0px;
                width: 40%;
                height: auto;
                border-radius: 20px;
            }

            .outline_signup h1{
                display: flex;
                justify-content: center;
            }

            .signup_form_input{
                width: 100%;

            }

            .inputName{
                display: flex;
                justify-content: space-between;
            }

            .inputName_half{
                width: 40%;
            }



            .inputName div input{
                border-radius: 30px;
                border: none;
                height: 3rem;
                padding: 0 20px 0;
                margin: 10px;
            }

            .inputBox input{
                width: calc((100%/12)*10);
                border-radius: 30px;
                border: none;
                height: 3rem;
                padding: 0 20px 0;
                margin: 10px;

            }

            .form-signup {
                width: 100%;
                max-width: 400px;
                padding: 15px;
                margin: 0 auto;
                text-align: center;
            }
            .form-signup .checkbox {
                font-weight: 400;
            }

            .checkbox{
                text-align: match-parent;
                margin: 10px 0 20px;
            }
            .form-signup .form-control {
                position: relative;
                box-sizing: border-box;
                height: auto;
                padding: 10px;
                font-size: 16px;
            }

            .signup_button{
                width: 10rem;
                height: 2rem;
                border-radius: 30px;
                margin-bottom: 20px;
                text-align: center;
                white-space: nowrap;
                cursor: pointer;
                background-color: black;
                color: white;
                font-weight: bold;
            }


            .signup_button:hover{
                background-color: white;
                color: black;

            }

            .signup{
                text-decoration: none;
                color: grey;
            }

            .signup:hover{
                color: red;
            }
            
            .form-signup button {
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

            .form-signup button:hover{
                background-color: rgba(250, 250, 250, 1);
                color: black;

            }
        </style>
    </head>
    <body class="text-center">
        <div>
            <%@include file="header.jsp" %>
        </div>

        <div class="outline_signup_form">
            <div class="outline_signup">
                <h1>Sign up</h1>
                <!--            <label for="inputEmail" class="sr-only">Email address</label>
                            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                            <label for="inputPassword" class="sr-only">Password</label>
                            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>-->
                <form action="signup" method="post" class="form-signup">


                    <div class="signup_form_input">

                        <div class="inputBox">
                            <input name="name" type="text" placeholder="Name" required autofocus="">
                        </div>
                        <div class="inputBox">
                            <input name="email" type="text" placeholder="Email" required >
                        </div>
                        <div class="inputBox">
                            <input name="phone" type="text" placeholder="Phone number" required >
                        </div>
                        <div class="inputBox">
                            <input name="address" type="text" placeholder="Address" required >
                        </div>
                        <div class="inputBox">
                            <input name="password" type="password" placeholder="Password" required>
                        </div>
                        <div class="inputBox">
                            <input name="repassword" type="password" placeholder="Re-Password" required>
                        </div>

                    </div>
                    <button class="" type="submit" style="height: 48px; width: calc((100%/12)*10);margin-top: 20px">Sign up</button>

                    <h3 style="color: red; text-align: center;">${error}</h3>
                    <div>
                        <a href="login.jsp" class="signup">Already have account</a>
                    </div>
                    <!--                    <div class="d-flex mb-5 align-items-center" style="color: white;">
                                            <label class="control control--checkbox mb-0">
                                                <span class="caption">I agree all statements in <a href="#!">Terms of service</a></span>
                                                <input type="checkbox" name="checkbox" value="1"></input>
                                                <div class="control__indicator"></div>
                                            </label>
                                        </div>-->
                    <p class="mt-5 mb-3 text-muted">&copy; 2022-2023</p>
                </form>
            </div>
        </div>
        <div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
