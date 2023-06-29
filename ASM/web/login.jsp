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
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>

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
                background-color: black;
                color: white;
                font-weight: bold;
            }

            .form-login button:hover{
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

            
            
        </style>
    </head>

    <body class="text-center">
        <div>
            <%@include file="header.jsp" %>
        </div>
        <div class="outline_login_form">
            <div class="outline_login">
                <h1 class="h3 mb-3 font-weight-normal">Log in</h1>
                <form action="login" method="post" class="form-login">


                    <div class="login_form_input">
                        <div class="inputBox">
                            <input name="email" type="email" placeholder="Email" required >
                        </div>
                        <div class="inputBox">
                            <input name="password" type="password" placeholder="Password" required>
                        </div>
                        <div class="checkbox mb-3">
                            <input name="check" type="checkbox" value="remember-me"> Remember me
                        </div>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
                    <div>
                        <a href="signup.jsp" class="signup">Sign up</a>
                    </div>
                    <div style="color: red">
                        <h5>${error}</h5>
                    </div>
                    <p class="mt-5 mb-3 text-muted">&copy; 2022-2023</p>
                </form>
            </div>
        </div>
        <div >
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
