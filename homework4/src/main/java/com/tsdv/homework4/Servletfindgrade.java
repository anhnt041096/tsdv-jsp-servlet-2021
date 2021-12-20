package com.tsdv.homework4;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servletfindgrade", value = "/Servletfindgrade")
public class Servletfindgrade extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        int mark = Integer.parseInt(request.getParameter("mark"));
        switch (mark) {
            case 0:
            case 1:
            case 2:
            case 3: pw.println("<h2>Fail!</h2>"); break;
            case 4:
            case 5:
            case 6: pw.println("<h2>Pass!</h2>"); break;
            case 7:
            case 8: pw.println("<h2>Merit!</h2>"); break;
            case 9:
            case 10: pw.println("<h2>Distinction!</h2>"); break;
            default: pw.println("<h2>Invalid grade!</h2>"); break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
