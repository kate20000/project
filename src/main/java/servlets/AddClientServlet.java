package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Clients;
import services.db.ClientDBService;

@WebServlet("/addClient")
public class AddClientServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         getServletContext().getRequestDispatcher("/pages/add.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            Clients client = new Clients(name, phone);
            ClientDBService.insert(client);
            response.sendRedirect(request.getContextPath()+"/index");
        }
        catch(Exception ex) {
            getServletContext().getRequestDispatcher("/pages/add.jsp").forward(request, response);
        }
    }
}