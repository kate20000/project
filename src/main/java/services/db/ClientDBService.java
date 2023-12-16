package services.db;
import model.Appointments;
import model.Clients;
import model.Order;
import model.Product;

import java.sql.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class ClientDBService {

    public static boolean create(Appointments service) {
        boolean isSuccess = false;
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "INSERT INTO appointments (name, phone, car, year, date, time, problem)\n" +
                "VALUES ('" + service.getName() + "', '" + service.getPhone() + "', '" + service.getCar() + "','" + service.getYear() + "','" + service.getDate() + "','" + service.getTime() + "','" + service.getService() + "')";
        if (dataBaseService.insert(sql)) {
            isSuccess = true;
        } else {
            isSuccess = false;
        }
        return isSuccess;
    }


    public static int update(Clients client) {
        try{
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {

                String sql = "UPDATE clients SET name = ?, phone = ? WHERE client_id = ?";
                try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
                    preparedStatement.setString(1, client.getName());
                    preparedStatement.setString(2, client.getPhone());
                    preparedStatement.setInt(3, client.getId());
                    return  preparedStatement.executeUpdate();
                }
            }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return 0;
    }

    public static Clients selectOne(int id) {
        Clients client = null;
        try {
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {

                String sql = "SELECT * FROM clients WHERE client_id=?";
                try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
                    preparedStatement.setInt(1, id);
                    ResultSet resultSet = preparedStatement.executeQuery();
                    if (resultSet.next()) {

                        int Id = resultSet.getInt(3);
                        String name = resultSet.getString(1);
                        String phone = resultSet.getString(2);
                        client = new Clients(Id, name, phone);
                    }
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return client;
    }

    public static ArrayList<Clients> select() {

        ArrayList<Clients> clients = new ArrayList<Clients>();
        try {
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM clients");
                while (resultSet.next()) {
                    String name = resultSet.getString(1);
                    String phone = resultSet.getString(2);
                    int id = resultSet.getInt(3);
                    Clients client = new Clients(id, name, phone);
                    clients.add(client);
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return clients;
    }

    public static boolean insert(Clients client) {
        boolean isSuccess = false;
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "INSERT INTO clients (name, phone)\n" +
                "VALUES ('" + client.getName() + "', '" + client.getPhone() + "')";
        if (dataBaseService.insert(sql)) {
            isSuccess = true;
        } else {
            isSuccess = false;
        }
        return isSuccess;
    }

    public static int delete(int id) {
        try{
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {
                String sql = "DELETE FROM clients WHERE client_id = ?";
                try(PreparedStatement preparedStatement = conn.prepareStatement(sql)){
                    preparedStatement.setInt(1, id);
                    return  preparedStatement.executeUpdate();
                }
            }
        }
        catch(Exception ex){
            System.out.println(ex);
        }
        return 0;
    }

    public static ArrayList<Order> show() {
        ArrayList<Order> orders = new ArrayList<Order>();
        try {
            Class.forName("org.postgresql.Driver").getDeclaredConstructor().newInstance();
            try (Connection conn = DriverManager.getConnection("jdbc:postgresql://217.107.219.154:49307/bonch_2105323", "bonch_2105323", "JnKtmEGhhLU=")) {
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM orders");
                while (resultSet.next()) {
                    int id = resultSet.getInt(1);
                    String ord = resultSet.getString(2);
                    int amount = resultSet.getInt(3);
                    String phone = resultSet.getString(4);
                    Order order = new Order(id, ord, amount, phone);
                    orders.add(order);
                }
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return orders;
    }

    public static boolean insertOrd(Order order) {
        boolean isSuccess = false;
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "INSERT INTO orders (product_name, amount, phone)\n" +
                "VALUES ('" + order.getOrder() + "', '" + order.getAmount() + "', '" + order.getPhone() + "')";
        if (dataBaseService.insert(sql)) {
            isSuccess = true;
        } else {
            isSuccess = false;
        }
        return isSuccess;
    }
}