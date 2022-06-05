package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.local.ConnectionUtility;

import com.caleumtatsu2010.techmate.database.query.ProductQueries;
import com.caleumtatsu2010.techmate.models.product.Product;
import com.caleumtatsu2010.techmate.models.Review;

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
    private ConnectionUtility connectionUtility;


    public ProductDao() {
        this.connectionUtility = new ConnectionUtility();
    }

    @Override
    public Product get(int id) {
        String query = "SELECT * FROM product WHERE id = ?";
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product product = new Product(rs.getString("id"), rs.getString("name"),rs.getDouble("price"),
                        rs.getString("currency"), rs.getInt("sub_category_id"), rs.getInt("discount_id"), rs.getInt("quantity")
                        ,rs.getString("image"), rs.getDouble("star"), rs.getInt("ratings"));
                return product;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }

//    public List<String> getColorsById(int id) {
//
//        String query = "SELECT * FROM product_colors  where product_id = ?";
//        List<String> list = new ArrayList<>();
//        try {
//            connection = ConnectionUtility.getConnection();
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
//            ConnectionUtility.closePreparedStatement(ps);
//            ConnectionUtility.closeResultSet(rs);
//            ConnectionUtility.closeConnection(connection);
//        }
//        return null;
//
//    }

    public int getQuantityById(int inventoryid) {
        String query = "SELECT * FROM product_inventory  where inventory_id = ?";//inventory_id in product
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, inventoryid);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("quantity");
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return 0;
    }

    public String getCategoryById(int categoryid) {
        String query = "SELECT * FROM product_category where id = ?";//inventory_id in product

        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, categoryid);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("name");
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }

//
public List<Review> getReviews(int id) {
    String query = "select * from product_reviews where product_id= ?";//review from 1 productt
    List<Review> list = new ArrayList<>();
    try {
        connection = connectionUtility.getConnection();
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
        ConnectionUtility.closeAll(connection, ps, rs);
    }
    return null;
}

    public String getDiscount(int discountid) {
        String query = "SELECT * FROM discount where id = ?";//inventory_id in product
        try {
            connection = connectionUtility.getConnection();
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
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }

    @Override
    public List<Product> getAll() {
        String query = ProductQueries.selectAllProduct;
        List<Product> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getString("id"), rs.getString("name"),rs.getDouble("price"),
                        rs.getString("currency"), rs.getInt("sub_category_id"), rs.getInt("discount_id"), rs.getInt("quantity")
                        ,rs.getString("image"), rs.getDouble("star"), rs.getInt("ratings"));
                list.add(product);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;

    }

    public List<Product> getAllByCategoryId(int id) {
        String query = "SELECT * FROM product WHERE category_id = ?";
        List<Product> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getString("id"), rs.getString("name"),rs.getDouble("price"),
                        rs.getString("currency"), rs.getInt("sub_category_id"), rs.getInt("discount_id"), rs.getInt("quantity")
                        ,rs.getString("image"), rs.getDouble("star"), rs.getInt("ratings"));
                list.add(product);
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
    public void insert(Product product) {
        String query = ProductQueries.insertProduct;//insert table query
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
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void update(Product product, String id) {
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(ProductQueries.updateProduct);
// "UPDATE `techmate`.`product` SET `name` = ?, `desc` = ?, `SKU` = ?, `price` = ?, `unit_price` = ?, `color` = ?, `category_id` = ?, `discount_id` = ?, `quantity` = ?, `supplier_id` = ?, `product_short_desc` = ?, `detail` = ?, `image` = ? WHERE (`id` = ?)";
            ps.setString(1,  product.getName());
            ps.setDouble(2, product.getPrice());
            ps.setString(3, product.getCurrency());
            ps.setInt(4, product.getSubCategoryId());
            ps.setInt(5, product.getDiscountId());
            ps.setInt(6, product.getQuantity());
            ps.setString(7, product.getImage());
            ps.setDouble(8, product.getStar());
            ps.setInt(9, product.getRatings());
            ps.executeUpdate();
            System.out.println("Data Updated Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void delete(int id) {
        String query = ProductQueries.deleteProduct;
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1,  id);
            System.out.println("Delete Successfully");
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }
}
