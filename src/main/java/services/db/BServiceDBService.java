package services.db;

import model.Appointments;
import model.Clients;
import model.Services;

import java.sql.*;
import java.util.ArrayList;

public class BServiceDBService {

    public ResultSet allService(){
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "select * from appointments";
        return dataBaseService.select(sql);
    }
    public static ArrayList<Appointments> select() {

        ArrayList<Appointments> appointments = new ArrayList<Appointments>();
        try {
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM appointments");
                while (resultSet.next()) {
                    Integer id =  resultSet.getInt(8);
                    String name = resultSet.getString(1);
                    String phone = resultSet.getString(2);
                    String car = resultSet.getString(3);
                    Integer year =  resultSet.getInt(4);
                    Date date = resultSet.getDate(5);
                    Time time =  resultSet.getTime(6);
                    String problem =  resultSet.getString(7);
                    Appointments appointment = new Appointments(id, name, phone, car, year, date, time, problem);
                    appointments.add(appointment);
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return appointments;
    }

    public ResultSet allService(String phone){
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "select * from appointments where phone = '"+phone+"'";
        return dataBaseService.select(sql);
    }

    public ResultSet allClients(){
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "select * from clients";
        return dataBaseService.select(sql);
    }
    public static ArrayList<Services> all() {
        ArrayList<Services> services = new ArrayList<Services>();
        try {
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM services");
                while (resultSet.next()) {
                    int id = resultSet.getInt(1);
                    String serv = resultSet.getString(2);
                    int price = resultSet.getInt(3);
                    Services service = new Services(id, serv, price);
                    services.add(service);
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return services;
    }
    public static int delete(int id) {
        try{
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {
                String sql = "DELETE FROM appointments WHERE appointment_id = ?";
                try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
                    preparedStatement.setInt(1, id);
                    return preparedStatement.executeUpdate();
                }
            }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return 0;
    }
}
