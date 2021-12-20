<%--
  Created by IntelliJ IDEA.
  User: AnhAnh
  Date: 12/15/2021
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Calculate Factorial</title>
</head>
<body>
        <form action="factorial.jsp" method="GET">
        <fieldset style="width: fit-content">
            <legend>Form Calculate Factorial</legend>
            Number: <input type="number" name="number" required>
            <br><br>
            <input type="submit" value="Find">
        </fieldset>
    </form>

    <%!
        public long calcFactorial(int number) {
            if (number > 0) {
                return number * calcFactorial(number - 1);
            } else {
                return 1;
            }
        }
    %>

    <%
        String number = request.getParameter("number");
        if (number != null) {
            int n = Integer.parseInt(number);
            long factorial = calcFactorial(n);
            out.println("<h2>Factorial of " + n + " equals " + factorial + "<h2>");
        }
    %>
</body>
</html>
