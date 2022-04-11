package com.caleumtatsu2010.techmate.database.query;

public class CategoryTypeQueries {
    //get all category type
    public static String getAll = "SELECT * FROM techmate.category_type";

    //get all by category section id
    public static String getAllByCateSecId = "SELECT * FROM techmate.category_type WHERE category_section_id = ?";

    //insert category type
    public static String insert = "INSERT INTO `techmate`.`category_type` (`id`, `name`, `category_section_id`) VALUES (?, ?, ?, ?)";


}
