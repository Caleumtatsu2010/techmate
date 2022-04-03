package com.longnh02.techmate.dao;

import com.longnh02.techmate.connection.ConnectionUtils;
import com.longnh02.techmate.models.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountDao implements Dao<Account>{

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtils connectionUtils;


    @Override
    public Account get(int id) {
        String query = "SELECT * FROM account WHERE id = ?";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Account account = new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getInt("account_typed"),rs.getString("account_status"));
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
                Account account = new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getInt("account_typeId"),rs.getString("account_status"));
                return account;
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
                    Account account = new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getInt("account_typeId"),rs.getString("account_status"));
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
        String query = "INSERT INTO account(username, password, account_typed, account_status) VALUES (?, ?, ?, ?)";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.setInt(3, account.getAccount_typeId());
            ps.setString(4, account.getAccountStatus());
            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeConnection(connection);
        }
    }

    @Override
    public void update(Account account, int id) {
    }

    @Override
    public void delete(int id) {
    }

}
