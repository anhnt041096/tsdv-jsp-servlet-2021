<%--
  Created by IntelliJ IDEA.
  User: AnhAnh
  Date: 12/17/2021
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Alert Message</title>
</head>
<body>
    <form name="f" method="post" onsubmit="validate()">
        <fieldset style="width: fit-content">
            <legend>Login Form</legend>
            Username: <input type="text" name="username" id="username">
            <br><br>
            Password: <input type="password" name="password" id="password">
            <br><br>
            <input type="submit" value="show">
        </fieldset>
    </form>

    <script language="Javascript">
        function validate()
        {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            if(!username)
            {
                alert("Username is required");
                return;
            }
            else if(!password)
            {
                alert("password is required");
                return;
            }
            else
            {
                // document.f.setAttribute("action","welcome.jsp");
                alert('welcome ' + username + "!");
            }
        }
    </script>
</body>
</html>
