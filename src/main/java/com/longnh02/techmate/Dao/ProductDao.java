package com.longnh02.techmate.Dao;

import com.longnh02.techmate.Connection.ConnectionUtils;
import com.longnh02.techmate.Models.Account;
import com.longnh02.techmate.Models.Product;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements Dao<Product>{

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    @Override
    public Product get(int id) {
        String query = "SELECT * FROM product WHERE id = ?";
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("desc"), rs.getString("SKU"),rs.getDouble("price"),
                        rs.getString("unit_price"), rs.getInt("category_id"), rs.getInt("discount_id"), rs.getInt("inventory_id"), rs.getInt("supplier_id"),
                        rs.getString("product_short_desc"), rs.getString("product_long_desc"), rs.getBinaryStream("image"));
                return product;
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeResultSet(rs);
            ConnectionUtils.closeConnection(connection);
        }
        return null;
    }

    public List<String> getColorsById(int id) {

        String query = "SELECT * FROM product_colors INNER JOIN product ON  product_colors.product_id = product.id  where product.id = ?";
        List<String> list = new ArrayList<>();
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("color"));
            }
            return list;

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeResultSet(rs);
            ConnectionUtils.closeConnection(connection);
        }
        return null;

    }

    public int getQuantityById(int id) {
        String query = "SELECT * FROM product_inventory INNER JOIN product ON product_inventory.id = product.inventory_id where product.id = ?";//inventory_id in product
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("quantity");
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeResultSet(rs);
            ConnectionUtils.closeConnection(connection);
        }
        return 0;
    }
    @Override
    public List<Product> getAll() {
        String query = "SELECT * FROM product";
        List<Product> list = new ArrayList<>();
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("desc"), rs.getString("SKU"),rs.getDouble("price"),
                        rs.getString("unit_price"), rs.getInt("category_id"), rs.getInt("discount_id"), rs.getInt("inventory_id"), rs.getInt("supplier_id"),
                        rs.getString("product_short_desc"), rs.getString("product_long_desc"), rs.getBinaryStream("image"));
                list.add(product);
            }
            return list;

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeResultSet(rs);
            ConnectionUtils.closeConnection(connection);
        }
        return null;

    }

    @Override
    public void insert(Product product) {

    }

    @Override
    public void update(Product product, int id) {

    }

    @Override
    public void delete(Product product) {

    }
}
