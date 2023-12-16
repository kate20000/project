package model;

public class Product {
    private int id;
    private String product;
    private int price;

    public Product() {
    }
    public Product(int id, String product, int price){
        this.id = id;
        this.product = product;
        this.price = price;
    }
    public Product(String product, int price) {
        this.product = product;
        this.price = price;
    }
    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
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