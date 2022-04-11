package com.caleumtatsu2010.techmate.database.query;

public class CategorySectionQueries {
    //get all category section
    public static String getAll = "SELECT * FROM techmate.category_section";
    //insert into product section
    public static String insert = "INSERT INTO `techmate`.`category_section` (`id`, `name`) VALUES (?, ?)";
    //delete category section
    public static String delete = "DELETE FROM `techmate`.`category_section` WHERE (`id` = ?)";
}
