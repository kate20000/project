package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LKServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String session = "no ses";
        if(req.getHeader("session")!= null){
            session = req.getHeader("session");
        }
        req.setAttribute("session", session);
        req.getRequestDispatcher("/pages/lk.jsp").forward(req, resp);
        super.doGet(req, resp);
    }
}
