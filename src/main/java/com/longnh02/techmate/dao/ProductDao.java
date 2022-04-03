package com.longnh02.techmate.dao;

import com.longnh02.techmate.connection.ConnectionUtils;

import com.longnh02.techmate.database.DatabaseQuery;
import com.longnh02.techmate.models.Discount;
import com.longnh02.techmate.models.Product;
import com.longnh02.techmate.models.Review;

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
    private ConnectionUtils connectionUtils;


    public ProductDao() {
        this.connectionUtils = new ConnectionUtils();
    }

    @Override
    public Product get(int id) {
        String query = "SELECT * FROM product WHERE id = ?";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("desc"), rs.getString("SKU"),rs.getDouble("price"),
                        rs.getString("unit_price"),rs.getString("color"), rs.getInt("category_id"), rs.getInt("discount_id"), rs.getInt("quantity"), rs.getInt("supplier_id"),
                        rs.getString("product_short_desc"), rs.getString("detail"), rs.getBinaryStream("image"));
                return product;
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }

//    public List<String> getColorsById(int id) {
//
//        String query = "SELECT * FROM product_colors  where product_id = ?";
//        List<String> list = new ArrayList<>();
//        try {
//            connection = ConnectionUtils.getConnection();
//            ps = connection.prepareStatement(query);
//            ps.setInt(1, id);
//
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(rs.getString("color"));
//            }
//            return list;
//
//        } catch (SQLException e) {
//            System.out.println(e);
//        } finally {
//            ConnectionUtils.closePreparedStatement(ps);
//            ConnectionUtils.closeResultSet(rs);
//            ConnectionUtils.closeConnection(connection);
//        }
//        return null;
//
//    }

    public int getQuantityById(int inventoryid) {
        String query = "SELECT * FROM product_inventory  where inventory_id = ?";//inventory_id in product
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, inventoryid);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("quantity");
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return 0;
    }

    public String getCategoryById(int categoryid) {
        String query = "SELECT * FROM product_category where id = ?";//inventory_id in product

        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, categoryid);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("name");
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }



//
public List<Review> getReviews(int id) {
    String query = "select * from product_reviews where product_id= ?";//review from 1 productt
    List<Review> list = new ArrayList<>();
    try {
        connection = connectionUtils.getConnection();
        ps = connection.prepareStatement(query);
        ps.setInt(1, id);

        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Review review = new Review(rs.getInt("id"), rs.getInt("star"), rs.getString("content"), rs.getInt("user_id"), rs.getInt("product_id"));
            list.add(review);
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

    public String getDiscount(int discountid) {
        String query = "SELECT * FROM discount where id = ?";//inventory_id in product
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, discountid);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("name");
                //System.out.println(rs.getString("name"));
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }

    @Override
    public List<Product> getAll() {
        String query = "SELECT * FROM product";
        List<Product> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("desc"), rs.getString("SKU"),rs.getDouble("price"),
                        rs.getString("unit_price"),rs.getString("color"), rs.getInt("category_id"), rs.getInt("discount_id"), rs.getInt("quantity"), rs.getInt("supplier_id"),
                        rs.getString("product_short_desc"), rs.getString("detail"), rs.getBinaryStream("image"));
                list.add(product);
            }
            return list;

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;

    }

    public List<Product> getAllByCategoryId(int id) {
        String query = "SELECT * FROM product WHERE category_id = ?";
        List<Product> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt("id"), rs.getString("name"), rs.getString("desc"), rs.getString("SKU"),rs.getDouble("price"),
                        rs.getString("unit_price"),rs.getString("color"), rs.getInt("category_id"), rs.getInt("discount_id"), rs.getInt("quantity"), rs.getInt("supplier_id"),
                        rs.getString("product_short_desc"), rs.getString("detail"), rs.getBinaryStream("image"));
                list.add(product);
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
    public void insert(Product product) {
        String query = DatabaseQuery;
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);

            ps.setInt(1,product.getId());
            ps.setString(2,  product.getName());
            ps.setString(3, product.getDesc());
            ps.setString(4,(product.getSku()));
            ps.setDouble(5, product.getPrice());
            ps.setString(6, product.getUnitPrice());
            ps.setString(7, product.getColor());
            ps.setInt(8, (product.getCategoryId()));
            ps.setInt(9, product.getDiscountId());
            ps.setInt(10, product.getQuantity());
            ps.setInt(11, product.getSupplierId());
            ps.setString(12, product.getProductShortDesc());
            ps.setString(13, product.getDetail());

            ps.setBlob(14, product.getImage());

            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeConnection(connection);

        }
    }

    @Override
    public void update(Product product, int id) {

        String query = "UPDATE `techmate`.`product` SET `name` = ?, `desc` = ?, `SKU` = ?, `price` = ?, `unit_price` = ?, `color` = ?, `category_id` = ?, `discount_id` = ?, `quantity` = ?, `supplier_id` = ?, `product_short_desc` = ?, `detail` = ?, `image` = ? WHERE (`id` = ?)";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);

            ps.setString(1,  product.getName());
            ps.setString(2, product.getDesc());
            ps.setString(3,product.getSku());
            ps.setDouble(4, product.getPrice());
            ps.setString(5, product.getUnitPrice());
            ps.setString(6, product.getColor());
            ps.setInt(7, product.getCategoryId());
            ps.setInt(8, product.getDiscountId());
            ps.setInt(9, product.getQuantity());
            ps.setInt(10, product.getSupplierId());
            ps.setString(11, product.getProductShortDesc());
            ps.setString(12, product.getDetail());

            ps.setBlob(13, product.getImage());

            ps.setInt(14, id);

            ps.executeUpdate();
            System.out.println("Data Updated Successfully");

        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeConnection(connection);

        }
    }

    @Override
    public void delete(int id) {
        String query = "DELETE FROM `techmate`.`product` WHERE (`id` = ?)";
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);

            ps.setInt(1,  id);

            System.out.println("Delete Successfully");
            ps.executeUpdate();

        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtils.closePreparedStatement(ps);
            ConnectionUtils.closeConnection(connection);

        }
    }
}
