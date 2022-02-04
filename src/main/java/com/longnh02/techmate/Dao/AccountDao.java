package com.longnh02.techmate.Dao;

import com.longnh02.techmate.Connection.ConnectionUtils;
import com.longnh02.techmate.Models.Account;

import java.sql.*;

public class AccountDao implements Dao<Account>{

    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;



    @Override
    public void insert(Account account) {
        int isCheck = 0;
        String query = "INSERT INTO account(username, password, account_typed, account_status) VALUES (?, ?, ?, ?)";
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ps.setInt(3, account.getAccountDetailId());
            ps.setInt(4, account.getRoleId());
            ps.setInt(5, account.getStatus());
            isCheck = ps.executeUpdate();
            JDBCConnection.closeResultSet(rs);
            JDBCConnection.closePreparedStatement(ps);
            JDBCConnection.closeConnection(connection);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return isCheck > 0;
    }
}
