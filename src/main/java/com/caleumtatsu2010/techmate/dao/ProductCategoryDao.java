package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.localdb.ConnectionUtility;
import com.caleumtatsu2010.techmate.models.category.ProductCategory;


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
    private ConnectionUtility connectionUtility;

    public ProductCategoryDao() {
        this.connectionUtility = new ConnectionUtility();
    }

    @Override
    public ProductCategory get(int id) {
        String query = "SELECT * FROM product_category where id = ?";//inventory_id in product

        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new ProductCategory(rs.getInt("id"), rs.getString("name"), rs.getString("desc"), rs.getTimestamp("created_at"),rs.getTimestamp("modified_at"));

            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }

        return null;
    }

    @Override
    public List<ProductCategory> getAll() {
        String query = "SELECT * FROM product_category";
        List<ProductCategory> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductCategory pdcategory = new ProductCategory(rs.getInt("id"), rs.getString("name"),
                        rs.getString("desc"), rs.getTimestamp("created_at"),rs.getTimestamp("modified_at"));
                list.add(pdcategory);
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
    public void insert(ProductCategory productCategory) {
        String query = "INSERT INTO product_category VALUES (?, ?, ?, ?, ?)";
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1,productCategory.getId());
            ps.setString(2,  productCategory.getName());
            ps.setString(3, productCategory.getDesc());
            ps.setTimestamp(4,(productCategory.getCreatedAt()));
            ps.setTimestamp(5,(productCategory.getModifiedAt()));

            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtility.closePreparedStatement(ps);
            ConnectionUtility.closeConnection(connection);
        }
    }

    @Override
    public void update(ProductCategory productCategory, int id) {

    }

    @Override
    public void delete(int id) {

    }
}
