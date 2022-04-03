package com.longnh02.techmate.models;

import java.sql.Timestamp;


public class Inventory {
    private int id;
    private int quantity;
    private Timestamp createdAt;
    private Timestamp modifiedAt;

    public Inventory() {
    }

    public Inventory(int id, int quantity, Timestamp createdAt, Timestamp modifiedAt) {
        this.id = id;
        this.quantity = quantity;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Timestamp modifiedAt) {
        this.modifiedAt = modifiedAt;
    }
}
