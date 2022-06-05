package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.local.ConnectionUtility;
import com.caleumtatsu2010.techmate.database.query.AccountQueries;
import com.caleumtatsu2010.techmate.database.query.AccountTypeQueries;
import com.caleumtatsu2010.techmate.models.account.Account;
import com.caleumtatsu2010.techmate.models.account.AccountType;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountTypeDao implements Dao<AccountType> {

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtility connectionUtility;

    public AccountTypeDao() {
        this.connectionUtility = new ConnectionUtility();
    }

    @Override
    public AccountType get(int id) {
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(AccountTypeQueries.getById);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new AccountType(rs.getInt("id"), rs.getString("account_type"), rs.getString("permissions"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }

    @Override
    public List<AccountType> getAll() {
        List<AccountType> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(AccountTypeQueries.getAll);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AccountType(rs.getInt("id"), rs.getString("account_type"), rs.getString("permissions")));
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
    public void insert(AccountType accountType) {

    }

    @Override
    public void update(AccountType accountType, String id) {

    }

    @Override
    public void delete(int id) {

    }
}
