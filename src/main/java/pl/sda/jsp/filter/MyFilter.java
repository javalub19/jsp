package pl.sda.jsp.filter;


import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class MyFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        final PrintWriter writer = response.getWriter();
        writer.write("<html><body><div style='text-align: center;'>");
        final String login = request.getParameter("login");

        if (login != null && login.equals("admin")) {
            chain.doFilter(request, response);
        } else {
            writer.print("<p style='color: red; font-size: larger'>" +
                    "User id is invalid. Please try again..." +
                    "</p>");
        }

        writer.write("</div></body></html>");
        writer.close();
    }
}
