package com.longnh02.techmate.models;

public class CategoryType{

    private int id;
    private String name;
    private String desc;
    private String categorySectionId;

    public CategoryType(int id, String name, String desc, String categorySectionId) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.categorySectionId = categorySectionId;
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

    public String getCategorySectionId() {
        return categorySectionId;
    }

    public void setCategorySectionId(String categorySectionId) {
        this.categorySectionId = categorySectionId;
    }
}
