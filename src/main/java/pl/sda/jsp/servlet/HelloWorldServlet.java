package pl.sda.jsp.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet(name = "HelloWorldServlet", urlPatterns = "/")
public class HelloWorldServlet extends HttpServlet {

    private String userId, localization;

    @Override
    public void init(ServletConfig config) {
        userId = config.getInitParameter("userId");
        localization = config.getInitParameter("localization");
    }

    @Override
    public void doGet(
            HttpServletRequest request
            , HttpServletResponse response) throws IOException {
        final PrintWriter writer = response.getWriter();
        writer.println("Hello world");
        writer.println("userId: " + userId);
        writer.println("localization" + localization);
    }
}
