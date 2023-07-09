<%-- 
    Document   : addProduct
    Created on : Jul 9, 2023, 11:34:01 AM
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
        <a href="manage">Back</a>
        <h1>Add new product</h1>
        <form action="addProduct" method="post">
            Category: <select name="category">
                <option value="1">Bàn phím</option>
                <option value="2">Chuột</option>
                <option value="3">Lót chuột</option>
                <option value="4">Switch</option>
            </select><br/>
            Product ID: <input type="text" name="id" required/> <br/>
            Product Name: <input type="text" name="name" required/> <br/>
            Brand: <input type="text" name="brand" required/> <br/>
            Price: <input type="number" name="price" required/> <br/>
            Sale: <input type="number" name="sale" required/>%<br/>
            Quantity: <input type="number" name="quantity" required/> <br/>
            Image Link: <input type="text" name="image" required/> <br/>
            Description: <input type="text" name="description" /> <br/>

            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
