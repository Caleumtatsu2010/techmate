package com.longnh02.techmate.database;

public class DatabaseQuery {

    /**
     * Product Queries
     */
    //get all product
    public static String selectAllProduct = "SELECT * FROM product";
    //insert product
    public static String insertProduct = "INSERT INTO `techmate`.`product` (`id`, `name`,`desc`, `SKU`,  `price`, `unit_price`,`color`, `category_id`, `discount_id`, `quantity`, `supplier_id`, `product_short_desc`, `detail`, `image`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    //update product by id
    public static String updateProduct =  "UPDATE `techmate`.`product` SET `name` = ?, `desc` = ?, `SKU` = ?, `price` = ?, `unit_price` = ?, `color` = ?, `category_id` = ?, `discount_id` = ?, `quantity` = ?, `supplier_id` = ?, `product_short_desc` = ?, `detail` = ?, `image` = ? WHERE (`id` = ?)";
    //delete product by id
    public static String deleteProduct = "DELETE FROM `techmate`.`product` WHERE (`id` = ?)";
    //get product by categoryID

    //get all category section
    public static String selectAllCateSection = "SELECT * FROM techmate.category_section";
    //insert into product section
    public static String insertCateSection = "INSERT INTO `techmate`.`category_section` (`id`, `name`) VALUES (?, ?)";
    //delete category section
    public static String deleteCategorySection = "DELETE FROM `techmate`.`category_section` WHERE (`id` = ?)";


    /**
     * Product Category Queries
     */
}
