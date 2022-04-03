package com.longnh02.techmate.models;
import com.longnh02.techmate.utility.ImageUtility;

import java.io.InputStream;

public class Product {
    private int id;
    private String name;
    private String desc;
    private String sku;
    private double price;
    private String unitPrice;
    private String color;

    private int categoryId;
    private int discountId;
    private int quantity;
    private int supplierId;
    private String productShortDesc;
    private String detail;
    private InputStream image;

    public Product() {
    }

    public Product(int id, String name, String desc, String sku, double price, String unitPrice, String color, int categoryId, int discountId, int quantity, int supplierId, String productShortDesc, String detail, InputStream image) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.sku = sku;
        this.price = price;
        this.unitPrice = unitPrice;
        this.color = color;
        this.categoryId = categoryId;
        this.discountId = discountId;
        this.quantity = quantity;
        this.supplierId = supplierId;
        this.productShortDesc = productShortDesc;
        this.detail = detail;
        this.image = image;
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

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(String unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getDiscountId() {
        return discountId;
    }

    public void setDiscountId(int discountId) {
        this.discountId = discountId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public String getProductShortDesc() {
        return productShortDesc;
    }

    public void setProductShortDesc(String productShortDesc) {
        this.productShortDesc = productShortDesc;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public InputStream getImage() {
        return image;
    }

    public void setImage(InputStream image) {
        this.image = image;
    }

    public String getSeenImage() {
        return ImageUtility.getInputStreamImage(this.image);
    }


}
