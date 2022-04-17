package com.caleumtatsu2010.techmate.connection;

import com.caleumtatsu2010.techmate.models.properties.connection;
import com.caleumtatsu2010.techmate.utility.fileUtility.properties.ConnectConfig;

import java.sql.*;

public class ConnectionUtils {

    private connection conninfo = null;

    public ConnectionUtils() {
        this.conninfo = ConnectConfig.readProperties("host", "dbname", "username", "password", "port", "dbtype");
    }

    public Connection getConnection() {

        String url = "jdbc:"+conninfo.getDbtype()+"://" + conninfo.getHost() + ":" + conninfo.getPort() + "/" + conninfo.getDbname();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            System.err.println("JDBC Driver not found!");
            return null;
        }
        System.out.println("Register successful!");
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, conninfo.getUsername(), conninfo.getPassword());
        } catch (SQLException ex) {
            ex.printStackTrace();
            return conn;
        }
        return conn;
    }

    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException ex) {
                System.out.println("Close ConnectConfig failed!");
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
                System.out.println("Close ConnectConfig, PreparedStatement, ResultSet failed!");
            }
        }
    }

}
