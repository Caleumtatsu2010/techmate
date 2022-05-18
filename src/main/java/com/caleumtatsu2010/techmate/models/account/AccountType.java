package com.caleumtatsu2010.techmate.models.account;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AccountType {
    private int id;
    private String accountType;
    private String permissions;
}
