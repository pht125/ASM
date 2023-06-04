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
    </head>
    <body>
    <div class="center">
      <h1>Login</h1>
      <form method="post">
        <div class="txt_field">
          <input type="text" required>
          <span></span>
          <label>Username</label>
        </div>
        <div class="txt_field">
          <input type="password" required>
          <span></span>
          <label>Password</label>
        </div>
        <!--<div class="pass">Forgot Password?</div>-->
        <input type="submit" value="Login">
        <div class="signup_link">
             <a href="#">Create account</a>
        </div>
      </form>
    </div>

  </body>
</html>
