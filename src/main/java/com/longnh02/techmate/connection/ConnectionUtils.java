package com.longnh02.techmate.connection;

import com.longnh02.techmate.database.DatabaseInfo;

import java.sql.*;

public class ConnectionUtils {

    private final String username = DatabaseInfo.getUsername();
    private final String password = DatabaseInfo.getPassword();
    private final String url = DatabaseInfo.getUrl();

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.err.println("JDBC Driver not found!");
            return null;
        }
        System.out.println("Register successful!");

        Connection conn = null;
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

    public static void closeAll(Connection connection, PreparedStatement ps, ResultSet rs)
    {
        if (connection != null && ps != null && rs != null) {
            try {
                connection.close();
                ps.close();
                rs.close();
            } catch (SQLException ex) {
                System.out.println("Close Connection, PreparedStatement, ResultSet failed!");
            }
        }
    }

}
