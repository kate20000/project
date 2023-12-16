package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Order;
import services.db.ClientDBService;

@WebServlet("/addOrder")
public class AddOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/pages/addorder.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            String order = request.getParameter("order");
            Integer amount = Integer.parseInt(request.getParameter("amount"));
            String phone = request.getParameter("phone");
            Order New = new Order(order, amount, phone);
            ClientDBService.insertOrd(New);
            response.sendRedirect(request.getContextPath()+"/aftercreate");
        }
        catch(Exception ex) {
            getServletContext().getRequestDispatcher("/pages/addorder.jsp").forward(request, response);
        }
    }
}