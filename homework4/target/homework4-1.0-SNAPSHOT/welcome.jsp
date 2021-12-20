<%--
  Created by IntelliJ IDEA.
  User: AnhAnh
  Date: 12/17/2021
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wellcome</title>
</head>
<body>
    <h1>
        <%
            out.print("<h2>welcome " + request.getParameter("username") + "</h2>");
        %>
    </h1>
</body>
</html>
