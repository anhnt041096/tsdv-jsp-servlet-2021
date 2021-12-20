<%@ page import="java.util.Scanner" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: AnhAnh
  Date: 12/17/2021
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate Sum</title>
</head>
<body>
    <form action="sum.jsp" method="GET">
        Enter the number of elements of the array:
        <input type="number" name="number">
    </form>

    <%!
        public double sum(int[] arr) {
            double sum = 0;
            for (int i: arr) {
                sum += i;
            }
            return sum;
        }
    %>

    <%
        String number = request.getParameter("number");
        if (number != null) {
            int n = Integer.parseInt(number);
            int[] myArr = new int[n];

            Random rd = new Random();
            for(int i = 0; i < n; i++) {
                myArr[i] = rd.nextInt(101);
            }
            double sum = sum(myArr);
            out.print("<h3>myArr = " + Arrays.toString(myArr) + "</h3><br>");
            out.print("<h3>Sum of elements in array :" + sum);
        }
    %>
</body>
</html>
