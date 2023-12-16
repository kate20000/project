package servlets.rest;

import com.google.gson.Gson;

import model.Product;
import services.BServiceService;
import services.db.BServiceDBService;
import services.db.ClientDBService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@WebServlet("/productAll")
public class ProductRest extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        ArrayList<Product> products = BServiceDBService.selectProduct();
        req.setAttribute("products", products);
        getServletContext().getRequestDispatcher("/pages/product.jsp").forward(req, resp);
    }
}
