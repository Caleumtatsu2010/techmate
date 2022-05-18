package com.caleumtatsu2010.techmate.models.account;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Account {
    private int id;
    private String username;
    private String password;
    private String privatekey;
    private byte[] salt;
    private Timestamp createdAt;
    private Timestamp modifiedAt;
    private int accountTypeId;
    private String accountStatus;
}
