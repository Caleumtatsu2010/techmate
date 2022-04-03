package com.longnh02.techmate.models;
import java.sql.Timestamp;
public class ProductCategory {
    private int id;
    private String name;
    private String desc;
    private Timestamp createdAt;
    private Timestamp modifiedAt;
    public ProductCategory() {
    }
    public ProductCategory(int id, String name, String desc, Timestamp createdAt, Timestamp modifiedAt) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
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
    public String getDesc() {
        return desc;
    }
    public void setDesc(String desc) {
        this.desc = desc;
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
