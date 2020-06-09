<%-- 
    Document   : calculate
    Created on : June 4, 2020, 11:28:07 AM
    Author     : Shidqi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
    <center>
        <h1>Calculator!</h1>
        <form action="CalcServlet">
            <input type="text" name="operand" value="0.0"/>
            <br/><br/>
            <input type="submit" name ="Add" value=" + "/>
            <input type="submit" name ="Sub" value=" - "/>
            <input type="submit" name ="Div" value=" / "/>
            <input type="submit" name ="Mul" value=" * "/>
            <input type="submit" name ="Clear" value="CE"/>
        </form>
        
        <br/><br/>
        <%@page import="stateful.calc.*"%>
        <%
            CalcBeanRemote calculator = (CalcBeanRemote)session.getAttribute("remote");
            if (request.getParameter("Add") != null) {
                calculator.add(Double.parseDouble(request.getParameter("operand")));
            }
            if (request.getParameter("Sub") != null) {
                calculator.subtract(Double.parseDouble(request.getParameter("operand")));
            }
            if (request.getParameter("Div") != null) {
                calculator.divide(Double.parseDouble(request.getParameter("operand")));
            }
            if (request.getParameter("Mul") != null) {
                calculator.multiply(Double.parseDouble(request.getParameter("operand")));
            }
            if (request.getParameter("Clear") != null) {
                calculator.clear();
            }
            out.println("Answer = " + calculator.getAns());
        %>
    </center>
    </body>
</html>
