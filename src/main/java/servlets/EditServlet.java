package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Appointments;
import model.Clients;
import services.db.ClientDBService;
@WebServlet("/editClient")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Clients client = ClientDBService.selectOne(id);
            if(client!=null) {
                request.setAttribute("client", client);
                getServletContext().getRequestDispatcher("/pages/edit.jsp").forward(request, response);
            }
            else {
                getServletContext().getRequestDispatcher("/pages/notfound.jsp").forward(request, response);
            }
        }
        catch(Exception ex) {
            getServletContext().getRequestDispatcher("/pages/notfound.jsp").forward(request, response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String phone = request.getParameter("phone");
            String name = request.getParameter("name");
            Clients client = new Clients(id, name, phone);
            ClientDBService.update(client);
            response.sendRedirect(request.getContextPath() + "/index");
        }
        catch(Exception ex) {
            getServletContext().getRequestDispatcher("/pages/notfound.jsp").forward(request, response);
        }
    }
}