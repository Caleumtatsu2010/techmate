package com.caleumtatsu2010.techmate.models.account;

import lombok.*;
import java.sql.Timestamp;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Account {
    private int id;
    private String username;
    private String password;
    private String key;
    private Timestamp createdAt;
    private Timestamp modifiedAt;
    private int account_typeId;
    private String accountStatus;
}
