<%-- 
    Document   : index
    Created on : Jun 13, 2019, 1:38:37 PM
    Author     : Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Caculate</title>
    </head>
    <body>
        <h1>Caculate</h1>

        <form action="caculate" method="post">
            <fieldset>
                <table>
                    <tr>
                        <td>First Number: </td>
                        <td><input name="firstnumber" type="text"></td>
                    </tr>
                    <tr>
                        <td>Operator: </td>
                        <td>
                            <select name="operator">
                                <option value="+">Add</option>
                                <option value="-">Sub</option>
                                <option value="*">Mult</option>
                                <option value="/">Div</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Second Number: </td>
                        <td><input name="secondnumber" type="text"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Result"/></td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </body>
</html>
