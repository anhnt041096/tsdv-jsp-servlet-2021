<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Find the grade</title>
</head>
<body>
    <form action="find_grade.jsp" method="GET">
        <fieldset style="width: fit-content">
            <legend>Find the grade</legend>
            Enter grade: <input type="number" name="grade" required>
            <input type="submit" value="Send">
        </fieldset>
    </form>

    <%
        String grade = request.getParameter("grade");
        if (grade != null) {
            int g = Integer.parseInt(grade);
            if (g < 4.0) {
                out.print("<h2>F</h2>");
            } else if (g >=4.0 && g < 5.0) {
                out.print("<h2>D</h2>");
            } else if (g >= 5.0 && g < 7.0) {
                out.print("<h2>C</h2>");
            } else if (g >= 7.0 && g < 8.5) {
                out.print("<h2>B</h2>");
            } else {
                out.print("<h2>A</h2>");
            }
        }
    %>
</body>
</html>