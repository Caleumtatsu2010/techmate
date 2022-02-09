package com.longnh02.techmate.Dao;

import com.longnh02.techmate.Connection.ConnectionUtils;
import com.longnh02.techmate.Models.Account;
import com.longnh02.techmate.Models.Product;
import com.longnh02.techmate.Models.ProductCategory;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductCategoryDao implements Dao<ProductCategory> {

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    @Override
    public ProductCategory get(int id) {
        return null;
    }

    @Override
    public List<ProductCategory> getAll() {
        String query = "SELECT * FROM product_category";
        List<ProductCategory> list = new ArrayList<>();
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductCategory pdcategory = new ProductCategory(rs.getInt("id"), rs.getString("name"), rs.getString("desc"), rs.getTimestamp("created_at"),rs.getTimestamp("modified_at"));
                list.add(pdcategory);
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
    public void insert(ProductCategory productCategory) {

    }

    @Override
    public void update(ProductCategory productCategory, int id) {

    }

    @Override
    public void delete(ProductCategory productCategory) {

    }
}
