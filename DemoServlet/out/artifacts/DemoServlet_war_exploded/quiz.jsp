<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 6/30/2019
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Quiz</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="col-lg-5">
        <h1>Welcome to quiz</h1>
        <h3>Your Score : <%= request.getAttribute("score") %>
        </h3>
        <form action="quiz" method="post">

            <div class="form-group">
                <input type="hidden" name="score" value="<%= request.getAttribute("score") %>">
            </div>

            <div class="form-group">
                <label> number 1:  </label>
                <input type="text" value="<%= request.getAttribute("number1") %>" readonly="readonly" name="number1">
                <h3>+</h3>
                <label> number 2:  </label>
                <input type="text" value="<%= request.getAttribute("number2") %>" readonly="readonly" name="number2">
            </div>
                <h3>=</h3>
                <input type="text" name="result">

            <input type="submit" value="Answer">
        </form>

    </div>
</div>

</body>
</html>
