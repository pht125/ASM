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
        <link rel="stylesheet" href="css/updateProdstyle.css?v=51"/>

    </head>
    <style>
        .select_form{
            font-size: 16px;
            height: 39.6px;
            border:none;
            -webkit-appearance: none;
            -moz-appearance: none;
            text-indent: 1px;
            text-overflow: '';
        }
    </style>
    <body>
        <a href="manage">Back</a>
        <div class="page-wrapper bg-dark p-t-100 p-b-50">
            <div class="wrapper wrapper--w900">
                <div class="card card-6">
                    <div class="card-heading">
                        <h2 class="title">Add new product</h2>
                    </div>
                    <div class="card-body">
                        <form action="addProduct" method="post">
                            <div class="form-row">
                                <div class="name">Category</div>
                                <div class="value">
                                    <select name="category" class="select_form">
                                        <option value="1">Bàn phím</option>
                                        <option value="2">Chuột</option>
                                        <option value="3">Lót chuột</option>
                                        <option value="4">Switch</option>
                                    </select><br/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Product ID</div>
                                <div class="value">
                                    <input class="input--style-6" type="text" name="id" required
                                           />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Product name</div>
                                <div class="value">
                                    <input class="input--style-6" type="text" name="name" required  />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Brand</div>
                                <div class="value">
                                    <input class="input--style-6" type="text" name="brand" required />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Price</div>
                                <div class="value">
                                    <input class="input--style-6" type="number" name="price" required />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Sale</div>
                                <div class="value">
                                    <input class="input--style-6" type="number" name="sale" required
                                           placeholder="%" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Quantity</div>
                                <div class="value">
                                    <input class="input--style-6" type="number" name="quantity" required
                                           />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Image link</div>
                                <div class="value">
                                    <input class="input--style-6" type="text" name="image">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Description</div>
                                <div class="value">
                                    <div class="input-group">
                                        <textarea class="textarea--style-6" id="id" name="description"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div style="color: red">
                                <h5>${requestScope.mess}</h5>
                            </div>
                            <div style="display: flex;justify-content: space-between;padding: 20px 0px">
                                <div style="margin-left: 40px">
                                    <button class="button-cancel"><a style="color: white;text-decoration: none;" href="manage">Cancel</a></button>
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
