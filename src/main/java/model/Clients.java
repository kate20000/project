package model;

public class Clients {
    private int id;
    private String name;
    private String phone;

    public Clients() {
    }

    public Clients(String name, String phone) {

        this.name = name;
        this.phone = phone;
    }
    public Clients(int id, String name, String phone){

        this.id = id;
        this.name = name;
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}