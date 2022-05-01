package com.caleumtatsu2010.techmate.database.connection.localdb;

import com.caleumtatsu2010.techmate.models.connection.connection;
import com.caleumtatsu2010.techmate.utility.file.properties.connection.FileConfig;

import java.sql.*;

public class ConnectionUtility {

    private connection conninfo = null;

    public ConnectionUtility() {
        this.conninfo = FileConfig.readProperties("host", "dbname", "username", "password", "port", "dbtype");
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
                System.out.println("Close FileConfig failed!");
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
                System.out.println("Close FileConfig, PreparedStatement, ResultSet failed!");
            }
        }
    }

}
