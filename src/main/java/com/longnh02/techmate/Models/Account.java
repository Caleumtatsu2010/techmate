package com.longnh02.techmate.Models;

public class Account {
    private int id;
    private String username;
    private String password;
    private int accountTyped;
    private String accountStatus;

    public Account(int id, String username, String password, int accountTyped, String accountStatus) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.accountTyped = accountTyped;
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

    public int getAccountTyped() {
        return accountTyped;
    }

    public void setAccountTyped(int accountTyped) {
        this.accountTyped = accountTyped;
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
                ", accountTyped=" + accountTyped +
                ", accountStatus='" + accountStatus + '\'' +
                '}';
    }
}
