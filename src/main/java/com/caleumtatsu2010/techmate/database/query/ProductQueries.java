package com.caleumtatsu2010.techmate.database.query;

public class ProductQueries {

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
//    public static String getCategoryById = "SELECT * FROM product_category where id = ?";
}
