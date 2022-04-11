package com.caleumtatsu2010.techmate.database.query;

public class CategorySectionQueries {
    //get all category section
    public static String selectAllCateSection = "SELECT * FROM techmate.category_section";
    //insert into product section
    public static String insertCateSection = "INSERT INTO `techmate`.`category_section` (`id`, `name`) VALUES (?, ?)";
    //delete category section
    public static String deleteCategorySection = "DELETE FROM `techmate`.`category_section` WHERE (`id` = ?)";
}
