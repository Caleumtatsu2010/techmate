package com.caleumtatsu2010.techmate.utility.file.properties.connection;

import com.caleumtatsu2010.techmate.models.connection.connection;
import com.caleumtatsu2010.techmate.utility.file.Path;


import java.io.*;
import java.util.Properties;
import java.util.PropertyResourceBundle;

public class FileConfig {
    //connection information configuration file
    private static PropertyResourceBundle prb =null;
    /**
     * read properties files
     * @return read properties file and return connection
     */
    public static connection readProperties() {
        prb = (PropertyResourceBundle)PropertyResourceBundle.getBundle(Path.mysqlConnectProperties);
        String host = prb.getString("host");
        String dbname = prb.getString("dbname");
        String username = prb.getString("username");
        String password = prb.getString("password");
        String port = prb.getString("port");
        String dbtype = prb.getString("dbtype");
        return new connection(host, dbname, username, password, port, dbtype);
    }

    public static connection readPropertiesMigrate() {
        prb = (PropertyResourceBundle)PropertyResourceBundle.getBundle(Path.mysqlConnectProperties);
        String host = prb.getString("host");
        String dbname = prb.getString("dbname");
        String username = prb.getString("username");
        String password = prb.getString("password");
        String port = prb.getString("port");
        String dbtype = prb.getString("dbtype");
        return new connection(host, dbname, username, password, port, dbtype);
    }

//    public static void main(String[] args) {
//        System.out.println(readProperties());
//    }
}

