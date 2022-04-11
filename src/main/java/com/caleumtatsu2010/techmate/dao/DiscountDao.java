package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.connection.ConnectionUtils;
import com.caleumtatsu2010.techmate.models.discount.Discount;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DiscountDao implements Dao<Discount>{
    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtils connectionUtils;

    public DiscountDao() {
        this.connectionUtils = new ConnectionUtils();
    }

    @Override
    public Discount get(int id) {
        String query = "SELECT * FROM discount WHERE id = ?";

        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Discount discount = new Discount(rs.getInt("id"), rs.getString("name"),
                        rs.getString("desc"), rs.getDouble("discount_percent"),
                        rs.getBoolean("active"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"));
                return discount;
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }

    @Override
    public List<Discount> getAll() {
        String query = "SELECT * FROM discount";
        List<Discount> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Discount discount = new Discount(rs.getInt("id"), rs.getString("name"),
                        rs.getString("desc"), rs.getDouble("discount_percent"),
                        rs.getBoolean("active"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"));
                list.add(discount);

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
    public void insert(Discount account) {
//        String query = "INSERT INTO account(username, password, account_typed, account_status) VALUES (?, ?, ?, ?)";
//        try {
//            connection = ConnectionUtils.getConnection();
//            ps = connection.prepareStatement(query);
//            ps.setString(1, account.getUsername());
//            ps.setString(2, account.getPassword());
//            ps.setInt(3, account.getAccount_typeId());
//            ps.setString(4, account.getAccountStatus());
//            ps.executeUpdate();
//            System.out.println("Data Added Successfully");
//
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            ConnectionUtils.closePreparedStatement(ps);
//            ConnectionUtils.closeConnection(connection);
//        }
    }

    @Override
    public void update(Discount discount, int id) {
    }

    @Override
    public void delete(int id) {
    }
}
