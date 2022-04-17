package com.caleumtatsu2010.techmate.database;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class DatabaseInfo {

    private static final String host = "localhost";
    private static final String dbname = "techmate";
    private static final String username = "root";
    private static final String password = "123456";
    private static final String port = "3306";
    private static final String dbtype = "mysql";
    private static final String url = "jdbc:"+dbtype+"://" + host + ":" + port + "/" + dbname;
}
