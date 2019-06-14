<%-- 
    Document   : view
    Created on : Jun 13, 2019, 3:54:42 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-5 col-md-5">
                <h1>Product details</h1>
                <p>
                    <a href="Product">Back to products list</a>
                </p>
                <table class="table">
                    <tr>
                        <td>Name: </td>
                        <td>${requestScope["product"].getName()}</td>
                    </tr>
                    <tr>
                        <td>Price: </td>
                        <td>${requestScope["product"].getPrice()}</td>
                    </tr>
                    <tr>
                        <td>Manufacture: </td>
                        <td>${requestScope["product"].getManufacture()}</td>
                    </tr>
                </table>
            </div>
        </div>

    </body>
</html>
