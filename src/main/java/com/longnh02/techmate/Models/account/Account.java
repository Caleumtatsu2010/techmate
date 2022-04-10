package com.longnh02.techmate.models.account;

import java.sql.Timestamp;

public class Account {
    private int id;
    private String username;
    private String password;
    private Timestamp createdAt;
    private Timestamp modifiedAt;
    private int account_typeId;
    private String accountStatus;

    public Account(int id, String username, String password, Timestamp createdAt, Timestamp modifiedAt, int account_typeId, String accountStatus) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
        this.account_typeId = account_typeId;
        this.accountStatus = accountStatus;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Timestamp modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public int getAccount_typeId() {
        return account_typeId;
    }

    public void setAccount_typeId(int account_typeId) {
        this.account_typeId = account_typeId;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", accountTyped=" + account_typeId +
                ", accountStatus='" + accountStatus + '\'' +
                '}';
    }
}
