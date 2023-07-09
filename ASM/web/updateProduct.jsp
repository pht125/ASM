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
        <title>Update: ${productDetail.product_name}</title>
        <link rel="stylesheet" href="css/updateProdstyle.css?v=51"/>
    </head>

    <body>

        <div class="page-wrapper bg-dark p-t-100 p-b-50">
            <div class="wrapper wrapper--w900">
                <div class="card card-6">
                    <div class="card-heading">
                        <h2 class="title">Update Product</h2>
                    </div>
                    <div class="card-body">
                        <form action="updateProduct" method="post">
                            <div class="form-row">
                                <div class="name">Product ID</div>
                                <div class="value">
                                    <input class="input--style-6" readonly="" type="text" name="id" required
                                           value="${productDetail.product_id}" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Product name</div>
                                <div class="value">
                                    <input class="input--style-6" type="text" name="name" required value="${productDetail.product_name}" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Brand</div>
                                <div class="value">
                                    <input class="input--style-6" type="text" name="brand" required value="${productDetail.brand}" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Price</div>
                                <div class="value">
                                    <input class="input--style-6" type="number" name="price" required value="${productDetail.price}" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Sale</div>
                                <div class="value">
                                    <input class="input--style-6" type="number" name="sale" required value="${productDetail.sale_percent}"
                                           placeholder="%" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Quantity</div>
                                <div class="value">
                                    <input class="input--style-6" type="number" name="quantity" required
                                           value="${productDetail.quantity}" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Image link</div>
                                <div class="value">
                                    <input class="input--style-6" type="text" name="image" value="${productDetail.img}">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Description</div>
                                <div class="value">
                                    <div class="input-group">
                                        <textarea class="textarea--style-6" id="id" name="description">${productDetail.description}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div style="display: flex;justify-content: space-between;padding: 20px 0px">
                                <div style="margin-left: 40px">
                                    <button class="button-cancel" type="submit"><a style="color: white;text-decoration: none;" href="manage">Cancel</a></button>
                                </div> 
                                <div style="margin-right: 40px">
                                    <button class="button-34" type="submit">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
