package model;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class Admin {

    private String login;
    private String password;

    public Admin() {
    }
    public Admin(String login, String password) {
        this.login = login;
        this.password = password;
    }

    public Admin(HttpServletRequest req) {
        this.login = req.getParameter("login");
        this.password = req.getParameter("password");
    }


    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}