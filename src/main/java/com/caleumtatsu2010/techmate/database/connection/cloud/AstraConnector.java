package com.caleumtatsu2010.techmate.database.connection.cloud;

import com.caleumtatsu2010.techmate.utility.file.Path;
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.ResultSet;
import com.datastax.oss.driver.api.core.cql.Row;

import java.nio.file.Paths;
import java.util.PropertyResourceBundle;


public class AstraConnector {
    private static PropertyResourceBundle prb = null;

    public static CqlSession connect(){
        prb = (PropertyResourceBundle)PropertyResourceBundle.getBundle(Path.astraTokenProperties);
        // Create the CqlSession object:
        try (CqlSession session = CqlSession.builder()
                .withCloudSecureConnectBundle(Paths.get(Path.secureConnectTechmate))
                .withAuthCredentials(prb.getString("clientId"), prb.getString("clientSecret"))
                .withKeyspace("techmate")
                .build()) {
            return session;
        }
    }

    public boolean disconnect(CqlSession session){
        if(session != null){
            session.close();
            System.out.println("All operation exsiting! ");
            return true;
        }
        return false;
    }

//    public static boolean excute(CqlSession session, String query) {
//        // "select release_version from system.local"
//
//        ResultSet rs = session.execute(query);
//        Row row = rs.one();
//        //Print the results of the CQL query to the console:
//        if (row != null) {
//            System.out.println(row.getString("release_version"));
//        } else {
//            System.out.println("An error occurred.");
//        }
//    }

    public static void main(String[] args) {
        CqlSession session = AstraConnector.connect();
        System.out.println("Connect successful: " + session.toString());
    }
}
