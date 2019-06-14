<%-- 
    Document   : create
    Created on : Jun 13, 2019, 3:53:13 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="col-md-5 col-lg-5">
                <h1>Create new customer</h1>
                <p>
                    <c:if test='${requestScope["message"] != null}'>
                        <span class="message">${requestScope["message"]}</span>
                    </c:if>
                </p>
                <p>
                    <a href="Product">Back to customer list</a>
                </p>
                <form method="post" action="Product?action=create">
                    <fieldset>
                        <legend>New product information </legend>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td>Name: </td>
                                    <td><input type="text" name="name" id="name" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>Price: </td>
                                    <td><input type="text" name="price" id="email" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>Manufacture: </td>
                                    <td><input type="text" name="manufacture" id="address" class="form-control"></td>
                                </tr>
                            </tbody>

                            <tr>
                                <td></td>
                                <td><input type="submit" value="Create product"class="btn btn-default"></td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
            </div>
        </div>

    </body>
</html>
