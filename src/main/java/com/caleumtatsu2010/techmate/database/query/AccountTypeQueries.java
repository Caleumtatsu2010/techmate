package com.caleumtatsu2010.techmate.database.query;

public class AccountTypeQueries {
    public static String getById = "SELECT * FROM account_type WHERE id = ?";

    //get all
    public static String getAll = "SELECT * FROM account_type";
}
