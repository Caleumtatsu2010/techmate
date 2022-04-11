package com.caleumtatsu2010.techmate.models.product;

public class SubProduct {

    private String categoryName;
    private String discountName;
    private String inventoryName;
    private String supplierName;

    public SubProduct() {

    }

    public SubProduct(String categoryName, String discountName, String inventoryName, String supplierName) {
        this.categoryName = categoryName;
        this.discountName = discountName;
        this.inventoryName = inventoryName;
        this.supplierName = supplierName;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDiscountName() {
        return discountName;
    }

    public void setDiscountName(String discountName) {
        this.discountName = discountName;
    }

    public String getInventoryName() {
        return inventoryName;
    }

    public void setInventoryName(String inventoryName) {
        this.inventoryName = inventoryName;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }
}
