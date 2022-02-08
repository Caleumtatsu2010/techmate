package com.longnh02.techmate.Models;

public class Account {
    private int id;
    private String username;
    private String password;
    private int account_typeId;
    private String accountStatus;

    public Account(int id, String username, String password, int account_typeId, String accountStatus) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.account_typeId = account_typeId;
        this.accountStatus = accountStatus;
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
