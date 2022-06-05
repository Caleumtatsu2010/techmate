package com.caleumtatsu2010.data.excel.ProductConvert;

import com.caleumtatsu2010.techmate.database.connection.local.ConnectionUtility;
import com.caleumtatsu2010.techmate.database.query.ProductQueries;
import com.caleumtatsu2010.techmate.models.product.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class convertToSql {

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtility connectionUtility;


    public convertToSql() {
        this.connectionUtility = new ConnectionUtility();
    }

    public void insert(Product product) {
        String query = "";//insert table query
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);

            ps.setString(1,product.getId());
            ps.setString(2,  product.getName());
            ps.setDouble(3, product.getPrice());
            ps.setString(4, product.getCurrency());
            ps.setInt(5, product.getSubCategoryId());
            ps.setInt(6, product.getDiscountId());
            ps.setInt(7, product.getQuantity());
            ps.setString(8, product.getImage());
            ps.setDouble(9, product.getStar());
            ps.setInt(10, product.getRatings());

            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }

    public static void main(String[] args) {

    }
}
