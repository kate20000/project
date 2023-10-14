package servlets;

import services.LoginService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("errorText", "");
        req.getRequestDispatcher("/pages/login.jsp").forward(req, resp);
        resp.setContentType("text/html");
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext();
        String login = req.getParameter("login");
        String pass = req.getParameter("password");
        LoginService loginService = new LoginService();
        if(loginService.auth(login, pass)){
            System.out.println("true");
            String session = loginService.createSession(login);

            System.out.println(session);
        } else {
            req.setAttribute("errorText", "error login or pass");
            req.getRequestDispatcher("/pages/login.jsp").forward(req, resp);
            System.out.println("false");
        }
        super.doPost(req, resp);
    }
}
