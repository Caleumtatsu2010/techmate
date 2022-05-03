package com.caleumtatsu2010.techmate.utility.file.properties.connection;

import com.caleumtatsu2010.techmate.models.connection.connection;
import com.caleumtatsu2010.techmate.utility.file.Path;
import com.fasterxml.jackson.core.*;
import com.fasterxml.jackson.databind.*;
import sun.rmi.transport.Endpoint;

import java.io.*;
import java.util.Properties;

public class FileConfig {
    //connection information configuration file
    private static File connectionFile = new File(Path.mysqlConnectProperties);

    /**
     * read properties files
     * @return read properties file and return connection
     */
    public static connection readProperties()
    {
        try {
            FileReader reader = new FileReader(connectionFile);
            Properties props = new Properties();
            props.load(reader);

            String host = props.getProperty("host", "localhost");
            String dbname = props.getProperty("dbname");
            String username = props.getProperty("username");
            String password = props.getProperty("password");
            String port = props.getProperty("port");
            String dbtype = props.getProperty("dbtype");

            reader.close();
            return new connection(host, dbname, username, password, port, dbtype);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return null;
    }
//    /**
//     * read properties files
//     * @return read properties file and return connection
//     */
//    public static connection readProperties() {
//        JavaPropsMapper mapper = new JavaPropsMapper();
//        // and then read/write data as usual
//        Endpoint host = mapper.readValue(new File(Path.mysqlConnectProperties),
//                Endpoint.class);
//        String asText = mapper.writeValueAsString(host);
//    }

//    public static void main(String[] args) {
//        System.out.println(readProperties());
//    }
}

