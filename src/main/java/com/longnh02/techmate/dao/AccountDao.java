package com.longnh02.techmate.dao;

import com.longnh02.techmate.connection.ConnectionUtils;
import com.longnh02.techmate.models.account.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountDao implements Dao<Account>{

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtils connectionUtils;

    public AccountDao() {
        this.connectionUtils = new ConnectionUtils();
    }

    @Override
    public Account get(int id) {
        String query = "SELECT * FROM account WHERE id = ?";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Account account = new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"), rs.getInt("account_typed"),rs.getString("account_status"));
                return account;
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }


    public Account login(String name, String pass) {
        String query = "SELECT * FROM account WHERE username = ? and password = ?";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"),rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"), rs.getInt("account_typeId"),rs.getString("account_status"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }

    @Override
    public List<Account> getAll() {
        String query = "SELECT * FROM account";
        List<Account> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Account account = new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"), rs.getInt("account_typeId"),rs.getString("account_status"));
                    list.add(account);
                }
                return list;

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);

        }
        return null;
    }


    @Override
    public void insert(Account account) {
        String query = "INSERT INTO account(username, password, account_typed, account_status) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.setTimestamp(3, account.getCreatedAt());
            ps.setTimestamp(4, account.getModifiedAt());
            ps.setInt(5, account.getAccount_typeId());
            ps.setString(6, account.getAccountStatus());
            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void update(Account account, int id) {
    }

    @Override
    public void delete(int id) {
    }

}
