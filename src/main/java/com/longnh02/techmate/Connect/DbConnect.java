package com.longnh02.techmate.Connect;

import java.sql.*;

public class DbConnect {
    private static final String dbname = "techmate";
    private static final String username = "root";
    private static final String password = "123456";

    public static Connection getConnection() {
        String url = "jdbc:mysql://localhost:3306/" + dbname;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.err.println("JDBC Driver not found?");
            return null;
        }
        System.out.println("Register successful!");

        Comparable conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            System.err.println("Connection Failed!");
            return conn;
        }
        return conn;
    }


    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException ex) {
                System.out.println("Close Connection failed!");
            }
        }
    }


    public static void closePreparedStatement(PreparedStatement ps) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException ex) {
                System.out.println("Close PreparedStatement failed!");
            }
        }
    }


    public static void closeResultSet(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException ex) {
                System.out.println("Close ResultSet failed!");
            }
        }
    }

}
