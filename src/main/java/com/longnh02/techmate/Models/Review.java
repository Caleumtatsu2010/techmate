package com.longnh02.techmate.Models;

public class Review {

    private int id;
    private int star;
    private String content;
    private int userId;
    private int productId;

    public Review() {
    }

    public Review(int id, int star, String content, int userId, int productId) {
        this.id = id;
        this.star = star;
        this.content = content;
        this.userId = userId;
        this.productId = productId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}
