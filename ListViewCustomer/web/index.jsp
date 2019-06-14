<%-- 
    Document   : index
    Created on : Jun 12, 2019, 11:40:04 AM
    Author     : Trung
--%>

<%@page import="Customer.CustomerDB"%>
<%@page import="Customer.Customer"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hiển Thị Danh Sách Khách Hàng</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Danh Sách Khách Hàng</h1>

            <table class="table">
                <thead>
                    <tr>
                        <td width="200px">Họ tên
                        </td>
                        <td width="200px">
                            Ngày sinh
                        </td>
                        <td width="200px">
                            Địa chỉ
                        </td>
                        <td width="200px">
                            image
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Customer> lists = CustomerDB.queryCustomer();
                    %>
                    <c:forEach items="${customer}" var="cus">
                        <tr>
                            <td>
                                ${cus.name}
                            </td>

                            <td>
                                <fmt:formatDate type="date" value="${cus.birthday}" />
                            </td>

                            <td>
                                ${cus.address}
                            </td>
                            <td>
                                <img class="img-responsive" src="${cus.image}">

                            </td>
                        </tr>

                    </c:forEach>
                </tbody>

            </table>
        </div>

    </body>
</html>
