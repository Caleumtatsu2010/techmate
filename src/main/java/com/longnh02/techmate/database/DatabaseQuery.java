package com.longnh02.techmate.database;

public class DatabaseQuery {

    /**
     * Product Queries
     */
    //get all product
    private static String selectAllProduct = "SELECT * FROM product";
    //insert product
    private static String insertProduct = "INSERT INTO `techmate`.`product` (`id`, `name`,`desc`, `SKU`,  `price`, `unit_price`,`color`, `category_id`, `discount_id`, `quantity`, `supplier_id`, `product_short_desc`, `detail`, `image`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    //update product by id
    private static String updateProduct =  "UPDATE `techmate`.`product` SET `name` = ?, `desc` = ?, `SKU` = ?, `price` = ?, `unit_price` = ?, `color` = ?, `category_id` = ?, `discount_id` = ?, `quantity` = ?, `supplier_id` = ?, `product_short_desc` = ?, `detail` = ?, `image` = ? WHERE (`id` = ?)";
    //delete product by id
    private static String deleteProduct = "DELETE FROM `techmate`.`product` WHERE (`id` = ?)";
    //get product by categoryID

    public static String getSelectAllProduct() {
        return selectAllProduct;
    }

    public static String getInsertProduct() {
        return insertProduct;
    }

    public static String getUpdateProduct() {
        return updateProduct;
    }

    public static String getDeleteProduct() {
        return deleteProduct;
    }

    /**
     * Product Category Queries
     */
}
