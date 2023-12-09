package services;
import services.db.BServiceDBService;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class BServiceService{
    public List<Map<String,Object>> getAll(){
        List<Map<String, Object>> all = new ArrayList<>();
        BServiceDBService bServiceDBService = new BServiceDBService();
        ResultSet resultSet = bServiceDBService.allService();
        try{
            while (resultSet.next()){
                Map<String ,Object> map = new HashMap<>();
                map.put("name", resultSet.getString("name"));
                map.put("phone", resultSet.getString("phone"));
                map.put("car", resultSet.getString("car"));
                map.put("year", resultSet.getInt("year"));
                map.put("date", resultSet.getDate("date"));
                map.put("time", resultSet.getTime("time"));
                map.put("isactive", resultSet.getInt("isactive"));
                map.put("problem", resultSet.getString("problem"));
                map.put("appointment_id", resultSet.getInt("appointment_id"));
                all.add(map);
            }
        } catch (Exception e){
        }
        return all;
    }
    public List<Map<String,Object>> getClients(){
        List<Map<String, Object>> clients = new ArrayList<>();
        BServiceDBService bServiceDBService = new BServiceDBService();
        ResultSet resultSet = bServiceDBService.allClients();
        try{
            while (resultSet.next()){
                Map<String ,Object> map = new HashMap<>();
                map.put("name", resultSet.getString("name"));
                map.put("phone", resultSet.getString("phone"));
                clients.add(map);
            }
        } catch (Exception e){
        }
        return clients;
    }
}