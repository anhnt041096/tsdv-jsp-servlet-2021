<%--
  Created by IntelliJ IDEA.
  User: AnhAnh
  Date: 12/15/2021
  Time: 9:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Redirect Page</title>
</head>
<body>
    <%
        String redirectURL = "dest.jsp";
//        response.sendRedirect(redirectURL);
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location" ,redirectURL);
    %>
</body>
</html>
