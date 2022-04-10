package com.longnh02.techmate.models.product;

public class ProductColor {
    private int id;
    private String name;
    private int productId;

    public ProductColor() {
    }

    public ProductColor(int id, String name, int productId) {
        this.id = id;
        this.name = name;
        this.productId = productId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}
