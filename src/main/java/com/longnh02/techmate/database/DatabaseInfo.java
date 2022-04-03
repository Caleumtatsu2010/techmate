package com.longnh02.techmate.database;

public class DatabaseInfo {

    private static final String dbname = "techmate";
    private static final String username = "root";
    private static final String password = "123456";
    private static final String port = "3306";
    private static final String url = "jdbc:mysql://localhost:"+port+"/"+ dbname;

    public DatabaseInfo() {
    }

    public static String getDbname() {
        return dbname;
    }

    public static String getUsername() {
        return username;
    }

    public static String getPassword() {
        return password;
    }

    public static String getUrl() {
        return url;
    }

}
