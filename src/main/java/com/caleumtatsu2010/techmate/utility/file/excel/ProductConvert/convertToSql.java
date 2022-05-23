package com.caleumtatsu2010.techmate.utility.file.excel.ProductConvert;

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

    public void update(Product product, int id) {
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(ProductQueries.updateProduct);
// "UPDATE `techmate`.`product` SET `name` = ?, `desc` = ?, `SKU` = ?, `price` = ?, `unit_price` = ?, `color` = ?, `category_id` = ?, `discount_id` = ?, `quantity` = ?, `supplier_id` = ?, `product_short_desc` = ?, `detail` = ?, `image` = ? WHERE (`id` = ?)";
            ps.setString(1,  product.getName());
            ps.setDouble(4, product.getPrice());
            ps.setString(5, product.getCurrency());
            ps.setInt(7, 1);
            ps.setInt(8, 4);
            ps.setInt(9, product.getQuantity());
            ps.setInt(10, product.getSupplierId());
            ps.setString(11, product.getProductShortDesc());
            ps.setString(12, product.getDetail());
            ps.setString(13, product.getImage());
            ps.setInt(14, id);
            ps.executeUpdate();
            System.out.println("Data Updated Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }
}
