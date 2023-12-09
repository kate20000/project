package model;

public class Services {
    private int service_id;
    private String description;

    public Services() {
    }
    public Services(String description) {
        this.description = description;
    }
    public String getService() {
        return description;
    }

    public void setService(String description) {
        this.description = description;
    }

}