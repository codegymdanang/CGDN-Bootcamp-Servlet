<%-- 
    Document   : list
    Created on : Jun 13, 2019, 3:54:23 PM
    Author     : Trung
--%>

<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Products List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        

        <div class="container">
            <h1>Products</h1>
            <p>
                <a href="Product?action=create">Create new product</a>
            </p>
            <table class="table">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Edit</td>
                        <td>Delete</td>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items='${requestScope["products"]}' var="product">
                        <tr>
                            <td>${product.getId()}</td>
                            <td><a href="Product?action=view&id=${product.getId()}">${product.getName()}</a></td>
                            <td>${product.getPrice()}</td>
                            <td><a href="Product?action=edit&id=${product.getId()}">edit</a></td>
                            <td><a href="Product?action=delete&id=${product.getId()}">delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>

            </table>
        </div>

    </body>
</html>
