package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.local.ConnectionUtility;
import com.caleumtatsu2010.techmate.models.Inventory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InventoryDao implements Dao<Inventory>{

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtility connectionUtility;

    @Override
    public Inventory get(int id) {
        String query = "SELECT * FROM techmate.product_inventory WHERE id = ?";
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Inventory inventory = new Inventory(rs.getInt("id"), rs.getInt("quantity"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"));
                return inventory;
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }

        return null;
    }

    @Override
    public List<Inventory> getAll() {

        String query = "SELECT * FROM product_inventory";
        List<Inventory> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Inventory inventory = new Inventory(rs.getInt("id"), rs.getInt("quantity"), rs.getTimestamp("created_at"), rs.getTimestamp("modified_at"));
                list.add(inventory);
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
    public void insert(Inventory inventory) {

    }

    @Override
    public void update(Inventory inventory, String id) {

    }

    @Override
    public void delete(int id) {

    }
}
