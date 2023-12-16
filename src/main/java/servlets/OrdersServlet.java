package servlets;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import model.Order;
import services.BServiceService;
import services.db.ClientDBService;

@WebServlet("/ordersAll")
public class OrdersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        ArrayList<Order> orders = ClientDBService.show();
        request.setAttribute("orders", orders);
        getServletContext().getRequestDispatcher("/pages/orders.jsp").forward(request, response);
    }
}