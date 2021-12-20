package com.tsdv.homework4;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servletcalcfactorial", value = "/Servletcalcfactorial")
public class Servletcalcfactorial extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        int number = Integer.parseInt(request.getParameter("number"));
        Factorial f = new Factorial();
        long result = f.calcFactorial(number);
        pw.println("<h3> Factorial of " + number + ": " + result + "</h3>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
