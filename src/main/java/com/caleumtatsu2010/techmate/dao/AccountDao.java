package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.ConnectionUtility;
import com.caleumtatsu2010.techmate.database.query.AccountQueries;
import com.caleumtatsu2010.techmate.models.account.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountDao implements Dao<Account> {

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtility connectionUtility;

    public AccountDao() {
        this.connectionUtility = new ConnectionUtility();
    }

    @Override
    public Account get(int id) {
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(AccountQueries.getById);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"),null, null, rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"), rs.getInt("account_typeId"),rs.getString("account_status"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }

//    public Account login(String name, String pass, String key) {
//        try {
//            connection = connectionUtility.getConnection();
//            ps = connection.prepareStatement(AccountQueries.getByUserNPass);
//
//            ps.setString(1, name);
//            ps.setString(2, pass);
//            ps.setString(3, key);
//
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                return new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getString("key"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"), rs.getInt("account_typeId"),rs.getString("account_status"));
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            ConnectionUtility.closeAll(connection, ps, rs);
//        }
//        return null;
//    }

    public byte[] getSalt(String key) {
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(AccountQueries.getSaltByKey);

            ps.setString(1, key);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                byte[] salt = rs.getBytes("salt");
                //release the blob and free up memory. (since JDBC 4.0)
                return salt;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }


//    public Account register(String username) {
//        try {
//            connection = connectionUtility.getConnection();
//            ps = connection.prepareStatement(AccountQueries.insert);
//
//            // new salt for new account
//            byte[] salt = SHA256Hashing.getSalt();
//
//            ps.setString(1, username);
//            ps.setString(2, );
//            ps.setString(3, key);
//
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                return new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getString("key"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"), rs.getInt("account_typeId"),rs.getString("account_status"));
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            ConnectionUtility.closeAll(connection, ps, rs);
//        }
//        return null;
//    }

    @Override
    public List<Account> getAll() {
        List<Account> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(AccountQueries.getAll);
            ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Account(rs.getInt("id"), rs.getString("username"), rs.getString("password"), null, null, rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"), rs.getInt("account_typeId"),rs.getString("account_status")));
                }
                return list;

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }


    @Override
    public void insert(Account account) {
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(AccountQueries.insert);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.setString(3, account.getPrivatekey());
            ps.setBytes(4, account.getSalt());
            ps.setTimestamp(5, account.getCreatedAt());
            ps.setTimestamp(6, account.getModifiedAt());
            ps.setInt(7, account.getAccount_typeId());
            ps.setString(8, account.getAccountStatus());
            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void update(Account account, int id) {

    }

    @Override
    public void delete(int id) {
    }

}
