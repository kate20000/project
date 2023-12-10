package model;

public class Services {
    private int id;
    private String service;
    private int price;

    public Services() {
    }
    public Services(int id, String service, int price){
        this.id = id;
        this.service = service;
        this.price = price;
    }
    public Services(String service, int price) {
        this.service = service;
        this.price = price;
    }
    public String getService() {
        return service;
    }

    public void setService(String Service) {
        this.service = Service;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

}