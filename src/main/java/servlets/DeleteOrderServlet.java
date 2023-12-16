package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.db.BServiceDBService;
import services.db.DataBaseService;

@WebServlet("/deleteOrder")
public class DeleteOrderServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            BServiceDBService.deleteOrder(id);
            response.sendRedirect(request.getContextPath() + "/order");
        }
        catch(Exception ex) {
            getServletContext().getRequestDispatcher("/pages/notfound.jsp").forward(request, response);
        }
    }
}