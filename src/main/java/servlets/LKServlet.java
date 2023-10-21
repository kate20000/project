package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LKServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("session") != null){ // если сессия есть то прокидываем в параметр
            String session = (String) req.getSession().getAttribute("session");
            req.setAttribute("session", session);
            req.getRequestDispatcher("/pages/lk.jsp").forward(req, resp);
            super.doGet(req, resp);
        } else {
            // если сессии нет, то на страницу авторизации
            resp.sendRedirect(req.getContextPath() + "/login");
        }

    }
}
