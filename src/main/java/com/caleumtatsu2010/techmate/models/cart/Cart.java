package com.caleumtatsu2010.techmate.models.cart;

import java.util.Date;

public class Cart {
    private int id;
    private int userId;
    private int total;
    private Date createdAt;
    private Date modifiedAt;

    public Cart() {
    }

    public Cart(int id, int userId, int total, Date createdAt, Date modifiedAt) {
        this.id = id;
        this.userId = userId;
        this.total = total;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }
}
