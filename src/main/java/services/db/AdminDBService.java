package services.db;

import model.Admin;
import java.util.List;

public class AdminDBService {

    public Boolean create(Admin admin){
        Boolean isSuccess = false;
        DataBaseService dataBaseService = new DataBaseService();
        String sql = "INSERT INTO admin (login, password)" +
                "VALUES ('"+admin.getLogin()+"', '"+admin.getPassword()+"')";
        if(dataBaseService.insert(sql)){
            // логика на успех
            isSuccess =true;
        } else {
            // ошибка
        }

        return isSuccess;
    }



}
