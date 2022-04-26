package com.caleumtatsu2010.techmate.models.connection;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class connection {
    private String host;
    private String dbname;
    private String username;
    private String password;
    private String port;
    private String dbtype;
}
