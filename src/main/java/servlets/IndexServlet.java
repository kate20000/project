package servlets;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import model.Clients;
import services.BServiceService;
import services.db.ClientDBService;

@WebServlet("/indexClient")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        ArrayList<Clients> clients = ClientDBService.select();
        request.setAttribute("clients", clients);
        getServletContext().getRequestDispatcher("/pages/index.jsp").forward(request, response);
    }
}