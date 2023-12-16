package model;

public class Order {
    private int id;
    private String order;
    private int amount;
    private String phone;

    public Order() {
    }
    public Order(int id, String order, int amount, String phone){
        this.id = id;
        this.order = order;
        this.amount = amount;
        this.phone = phone;
    }
    public Order(String order, int amount, String phone) {
        this.order = order;
        this.amount = amount;
        this.phone = phone;
    }
    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


}