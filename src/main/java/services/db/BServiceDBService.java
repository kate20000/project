package services.db;

import java.sql.ResultSet;

public class BServiceDBService {

    public ResultSet allService(){
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "select * from appointments";
        return dataBaseService.select(sql);
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
}
