package com.caleumtatsu2010.techmate.database.query;

public class AccountQueries {
    //get all by id
    public static String getById = "SELECT * FROM account WHERE id = ?";
    //get by username and password
    public static String getByUserNPass = "SELECT * FROM techmate.account where username = ? and password = ? and `key` = ?";

    //get all
    public static String getAll = "SELECT * FROM account";
    //insert new account
    public static String insert = "INSERT INTO account(username, password, account_typed, account_status) VALUES (?, ?, ?, ?, ?, ?)";
}
