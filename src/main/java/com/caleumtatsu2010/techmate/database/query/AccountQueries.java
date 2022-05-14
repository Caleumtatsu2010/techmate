package com.caleumtatsu2010.techmate.database.query;

public class AccountQueries {
    //get all by id
    public static String getById = "SELECT * FROM account WHERE id = ?";
    //get by username and password
    public static String getByUserNPass = "SELECT * FROM techmate.account where username = ? and password = ?";

    //get all
    public static String getAll = "SELECT * FROM account";
    //insert new account
    public static String insert = "INSERT INTO `techmate`.`account` (`username`, `password`, `privatekey`, `salt`, `created_at`, `modified_at`, `account_typeId`, `account_status`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

    //get salt by key
    public static String getSaltByKey = "SELECT salt FROM techmate.account where privatekey = ?";
}
