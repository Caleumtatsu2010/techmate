package com.caleumtatsu2010.techmate.database.query;

public class CategoryTypeQueries {
    //get all category type
    public static String selectAllCateType = "SELECT * FROM techmate.category_type";

    //get by category section id
    public static String getByCateSectionId = "SELECT * FROM techmate.category_type WHERE category_section_id = ?";

    //insert category type
    public static String insertCategoryType = "INSERT INTO `techmate`.`category_type` (`id`, `name`, `category_section_id`) VALUES (?, ?, ?, ?)";


}
