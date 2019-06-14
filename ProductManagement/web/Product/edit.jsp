<%-- 
    Document   : edit
    Created on : Jun 13, 2019, 3:54:10 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-5 col-md-5">
                <h1>Edit new customer</h1>
                <p>
                    <c:if test='${requestScope["message"] != null}'>
                        <span class="message">${requestScope["message"]}</span>
                    </c:if>
                </p>

                <p>
                    <a href="Product">Back to customer list</a>
                </p>

                <form method="post" action="Product?action=edit&id=${requestScope["product"].getId()}">
                    <fieldset>
                        <legend>Edit product information</legend>
                        <table class="table">
                            <tr>
                                <td>Name: </td>
                                <td><input type="text" class="form-control" name="name" id="name" value="${requestScope["product"].getName()}"></td>
                            </tr>
                            <tr>
                                <td>Price: </td>
                                <td><input type="text" class="form-control" name="price" id="email" value="${requestScope["product"].getPrice()}"></td>
                            </tr>
                            <tr>
                                <td>Manufacture: </td>
                                <td><input type="text" class="form-control" name="manufacture" id="address" value="${requestScope["product"].getManufacture()}"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" class="bnt btn-default" value="Update product"></td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
            </div>
        </div>
    </body>
</html>

