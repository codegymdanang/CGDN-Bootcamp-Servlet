<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 6/30/2019
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Home</title>
  </head>

  <body>
  <h3>This is my Index page</h3>
  <form action="/hello" method="get">
    <label>Input your name</label>
    <input type="text" name="name">
    <input type="submit" value="Submit">
  </form>
  </body>
</html>
