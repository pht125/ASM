<%-- 
    Document   : updateProduct
    Created on : Jul 9, 2023, 12:05:51 PM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <form action="updateProduct" method="post">
            Category: <select name="category">
                <c:if test="${productDetail.cate_id == 1}">
                    <option value="1" selected="">Bàn phím</option>
                </c:if>

                <c:if test="${productDetail.cate_id == 2}">
                    <option value="2" selected>Chuột</option>
                </c:if>
                <c:if test="${productDetail.cate_id == 3}">
                    <option value="3" selected>Lót chuột</option>
                </c:if>
                <c:if test="${productDetail.cate_id == 4}">
                    <option value="4" selected>Switch</option>
                </c:if>
            </select><br/>
            Product ID: <input readonly="" type="text" name="id" required value="${productDetail.product_id}"/> <br/>
            Product Name: <input type="text" name="name" required value="${productDetail.product_name}"/> <br/>
            Brand: <input type="text" name="brand" required value="${productDetail.brand}"/> <br/>
            Price: <input type="number" name="price" required value="${productDetail.price}"/> <br/>
            Sale: <input type="number" name="sale" required value="${productDetail.sale_percent}"/>%<br/>
            Quantity: <input type="number" name="quantity" required value="${productDetail.quantity}"/> <br/>
            Image Link: <input type="text" name="image" required value="${productDetail.img}"/> <br/>
            Description: <input type="text" name="description" max="" value=""/> <br/>

            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
