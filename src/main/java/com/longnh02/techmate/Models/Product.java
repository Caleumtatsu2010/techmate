package com.longnh02.techmate.Models;



import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Base64;

public class Product {
    private int id;
    private String name;
    private String desc;
    private String sku;
    private double price;
    private String unitPrice;
    private int categoryId;
    private int discountId;
    private int inventoryId;
    private int supplierId;
    private String productShortDesc;
    private String productLongDesc;
    private InputStream image;

    public Product() {
    }

    public Product(int id, String name, String desc, String sku, double price, String unitPrice, int categoryId, int discountId, int inventoryId, int supplierId, String productShortDesc, String productLongDesc, InputStream image) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.sku = sku;
        this.price = price;
        this.unitPrice = unitPrice;
        this.categoryId = categoryId;
        this.discountId = discountId;
        this.inventoryId = inventoryId;
        this.supplierId = supplierId;
        this.productShortDesc = productShortDesc;
        this.productLongDesc = productLongDesc;
        this.image = image;
    }

    public InputStream getImage() {
        return image;
    }

    public void setImage(InputStream image) {
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

    public int getInventoryId() {
        return inventoryId;
    }

    public void setInventoryId(int inventoryId) {
        this.inventoryId = inventoryId;
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

    public String getProductLongDesc() {
        return productLongDesc;
    }

    public void setProductLongDesc(String productLongDesc) {
        this.productLongDesc = productLongDesc;
    }

    public String getInputStreamImage() {
        if(this.image != null)
        {
            try{
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = this.image.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }

                byte[] imageBytes = outputStream.toByteArray();
                return Base64.getEncoder().encodeToString(imageBytes);
            }catch (Exception ex)
            {
                ex.printStackTrace();
            }
        }
        return null;
    }


}
