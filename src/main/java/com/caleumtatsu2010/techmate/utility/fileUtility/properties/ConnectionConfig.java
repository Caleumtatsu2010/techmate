package com.caleumtatsu2010.techmate.utility.fileUtility.properties;

import com.caleumtatsu2010.techmate.models.properties.connection;
import java.io.*;
import java.util.Properties;

public class ConnectionConfig {
    //connection information configuration file
    private static File connectionFile = new File("D:\\stuff\\JAVA\\techmate\\src\\main\\java\\com\\caleumtatsu2010\\techmate\\properties\\connection.properties");

    /**
     *
     * @param HOSTNAME
     * @param DBNAME
     * @param USERNAME
     * @param PASSWORD
     * @param PORTNAME
     * @return connection read from properties file
     */
    public static connection readProperties(String HOSTNAME, String DBNAME, String USERNAME, String PASSWORD, String PORTNAME, String DBTYPE)
    {
        try {
            FileReader reader = new FileReader(connectionFile);
            Properties props = new Properties();
            props.load(reader);

            String host = props.getProperty(HOSTNAME, "localhost");
            String dbname = props.getProperty(DBNAME);
            String username = props.getProperty(USERNAME);
            String password = props.getProperty(PASSWORD);
            String port = props.getProperty(PORTNAME);
            String dbtype = props.getProperty(DBTYPE);

            reader.close();
            return new connection(host, dbname, username, password, port, dbtype);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return null;
    }

//    public static void main(String[] args) {
//        System.out.println(readProperties("host", "dbname", "username", "password", "port").getPort());
//    }
}

