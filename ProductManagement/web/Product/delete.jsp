<%-- 
    Document   : delete
    Created on : Jun 13, 2019, 3:54:02 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-5 col-md-5">
                <h1>Delete Product</h1>
                <p>
                    <a href="Product">Back to customer list</a>
                </p>
                <form method="post">
                    <h3>Are you sure?</h3>
                    <fieldset>
                        <legend>Customer information</legend>
                        <table class="table">
                            <tr>
                                <td>Name: </td>
                                <td>${requestScope["product"].getName()}</td>
                            </tr>
                            <tr>
                                <td>Email: </td>
                                <td>${requestScope["product"].getPrice()}</td>
                            </tr>
                            <tr>
                                <td>Address: </td>
                                <td>${requestScope["product"].getManufacture()}</td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Delete Product"class="bnt btn-default"></td>
                                <td><a href="Product">Product List</a></td>
                            </tr>
                        </table>
                    </fieldset>
            </div>
        </div>

    </body>

</html>
