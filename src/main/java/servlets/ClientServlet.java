package servlets;

import model.Appointments;
import services.db.ClientDBService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ClientServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        req.setAttribute("errorText", "");
        req.getRequestDispatcher("/pages/create.jsp").forward(req, resp);
        resp.setContentType("text/html");
        super.doGet(req, resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try {
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String car = request.getParameter("car");
            String dateStr = request.getParameter("date");

            if (dateStr == null || dateStr.isEmpty()) {
                throw new IllegalArgumentException("Date parameter is missing or empty");
            }

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = dateFormat.parse(dateStr);

            String timeStr = request.getParameter("time");

            if (timeStr == null || timeStr.isEmpty()) {
                throw new IllegalArgumentException("Time parameter is missing or empty");
            }

            Time time = Time.valueOf(timeStr + ":00");
            String problem = request.getParameter("problem");
            int year = Integer.parseInt(request.getParameter("year"));

            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
            Appointments appointment = new Appointments(name, phone, car, year, sqlDate, time, problem);
            ClientDBService.create(appointment);
            response.sendRedirect(request.getContextPath() + "/aftercreate");
        } catch (ParseException | IllegalArgumentException ex) {
            request.setAttribute("errorMessage", "Invalid date or time format");
            getServletContext().getRequestDispatcher("/create.jsp").forward(request, response);
        }
    }
}
