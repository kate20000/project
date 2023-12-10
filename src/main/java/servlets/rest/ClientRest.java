package servlets.rest;

import model.Services;
import services.db.BServiceDBService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/priceAll")
public class ClientRest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Services> services = BServiceDBService.all();
        req.setAttribute("services", services);
        getServletContext().getRequestDispatcher("/pages/price.jsp").forward(req, resp);
    }
}
