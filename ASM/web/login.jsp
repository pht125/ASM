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

        <style>
            html,
            body {
                height: 100%;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                position: relative;
                min-height: 100vh;
                font-family: Hack, monospace;
            }

            body {
                display: -ms-flexbox;
                display: -webkit-box;
                display: flex;
                -ms-flex-align: center;
                -ms-flex-pack: center;
                -webkit-box-align: center;
                align-items: center;
                -webkit-box-pack: center;
                justify-content: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #f5f5f5;
            }

            .outline_signin{
                background-color: rgba(227, 227, 227, 0.59);
                margin-top: 30px;
            }
            .form-signin {
                width: 100%;
                max-width: 330px;
                padding: 15px;
                margin: 0 auto;
                text-align: center;
            }
            .form-signin .checkbox {
                font-weight: 400;
            }

            .checkbox{
                text-align: match-parent;
                margin: 10px 0 20px;
            }
            .form-signin .form-control {
                position: relative;
                box-sizing: border-box;
                height: auto;
                padding: 10px;
                font-size: 16px;
            }

            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }

            .form-signin button {
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

            .form-signin button:hover{
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
            
            #inputUsername{
                margin: 0 0 20px;
            }
        </style>
    </head>
    <body class="text-center">
        <img class="mb-4" src="images/web_logo.png" alt="" width="210" height="100">
        <div class="outline_signin">
            <form action="login" method="post" class="form-signin">

                <h1 class="h3 mb-3 font-weight-normal">Log in</h1>
                <!--            <label for="inputEmail" class="sr-only">Email address</label>
                            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                            <label for="inputPassword" class="sr-only">Password</label>
                            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>-->
                <table>

                    <input name="email" type="text" id="inputUsername" class="form-control" placeholder="Email" required>

                    <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>

                </table>

                <div class="checkbox mb-3">
                    <label>
                        <input name="check" type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
                <div>
                    <a href="signup.jsp" class="signup">Sign up</a>
                </div>
                <p class="mt-5 mb-3 text-muted">&copy; 2022-2023</p>
            </form>
        </div>
    </body>
</html>
