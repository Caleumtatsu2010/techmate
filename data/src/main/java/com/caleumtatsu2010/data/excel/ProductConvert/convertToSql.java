package com.caleumtatsu2010.data.excel.ProductConvert;

import com.caleumtatsu2010.techmate.database.connection.local.ConnectionUtility;
import com.caleumtatsu2010.techmate.database.query.ProductQueries;
import com.caleumtatsu2010.techmate.models.product.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class convertToSqlz {

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtility connectionUtility;


    public convertToSql() {
        this.connectionUtility = new ConnectionUtility();
    }

    @Override
    public void insert(Product product) {
        String query = "INSERT INTO `techmate`.`product` (`id`, `name`,`desc`, `SKU`,  `price`, `unit_price`,`color`, `category_id`, `discount_id`, `quantity`, `supplier_id`, `product_short_desc`, `detail`, `image`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";//insert table query
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);

            ps.setInt(1,product.getId());
            ps.setString(2,  product.getName());
            ps.setString(3, product.getDesc());
            ps.setString(4,(product.getSku()));
            ps.setDouble(5, product.getPrice());
            ps.setString(6, product.getCurrency());
            ps.setString(7, product.getColor());
            ps.setInt(8, (product.getCategoryId()));
            ps.setInt(9, product.getDiscountId());
            ps.setInt(10, product.getQuantity());
            ps.setInt(11, product.getSupplierId());
            ps.setString(12, product.getProductShortDesc());
            ps.setString(13, product.getDetail());

            ps.setString(14, product.getImage());

            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }
}
