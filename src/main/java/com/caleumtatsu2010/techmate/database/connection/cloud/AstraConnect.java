package com.caleumtatsu2010.techmate.database.connection.cloud;

import com.caleumtatsu2010.techmate.utility.file.Path;
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.ResultSet;
import com.datastax.oss.driver.api.core.cql.Row;
import java.nio.file.Paths;


public class AstraConnect {
    public static void connect(){
        // Create the CqlSession object:
        try (CqlSession session = CqlSession.builder()
                .withCloudSecureConnectBundle(Paths.get(Path.secureConnectTechmate))
                .withAuthCredentials("<<CLIENT ID>>","<<CLIENT SECRET>>")
                .build()) {
            // Select the release_version from the system.local table:
            ResultSet rs = session.execute("select release_version from system.local");
            Row row = rs.one();
            //Print the results of the CQL query to the console:
            if (row != null) {
                System.out.println(row.getString("release_version"));
            } else {
                System.out.println("An error occurred.");
            }
        }
        System.exit(0);
    }
    public static void main(String[] args) {

    }
}
