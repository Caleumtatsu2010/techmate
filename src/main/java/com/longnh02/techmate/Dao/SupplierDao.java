package com.longnh02.techmate.Dao;

import com.longnh02.techmate.Connection.ConnectionUtils;
import com.longnh02.techmate.Models.Account;
import com.longnh02.techmate.Models.Supplier;
import com.longnh02.techmate.Models.User;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SupplierDao implements Dao<Supplier>{

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    FileInputStream fs=null;

    @Override
    public Supplier get(int id) {


        return null;
    }

    @Override
    public List<Supplier> getAll() {
        String query = "SELECT * FROM techmate.supplier;";
        List<Supplier> list = new ArrayList<>();
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Supplier supplier = new Supplier(rs.getInt("id"), rs.getString("name"), rs.getString("desc"),
                        rs.getString("email_address"),rs.getInt("business_phone"), rs.getInt("mobile_phone"),
                        rs.getString("fax_number"), rs.getString("address_line1"), rs.getString("address_line2"),
                        rs.getString("town"), rs.getString("district"), rs.getString("city"), rs.getString("state_province"),
                        rs.getString("country"), rs.getString("postal_code"));
                list.add(supplier);
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
    public void insert(Supplier supplier) {
//        String query = "INSERT INTO user(account_id, first_name, last_name, mobile_phone, citizen_id, email, business_phone , image, created_at, modified_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
//        try {
//            connection = ConnectionUtils.getConnection();
//            ps = connection.prepareStatement(query);
//            ps.setInt(1,user.getAccountId());
//            ps.setString(2,  user.getFirstName());
//            ps.setString(3, user.getLastName());
//            ps.setInt(4,(user.getMobilePhone()));
//            ps.setInt(5, user.getCitizenId());
//            ps.setString(6, user.getEmail());
//            ps.setInt(7,(user.getBusinessPhone()));
//            ps.setBlob(8, user.getImage());
//            ps.setTimestamp(9, user.getCreatedAt());
//            ps.setTimestamp(10, user.getModifiedAt());
//
//            ps.executeUpdate();
//            System.out.println("Data Added Successfully");
//
//        } catch (Exception e) {
//            System.err.println(e);
//            e.printStackTrace();
//        } finally {
//            System.out.println("Closing the connection.");
//            ConnectionUtils.closePreparedStatement(ps);
//            ConnectionUtils.closeConnection(connection);
//
//        }
    }

    @Override
    public void update(Supplier supplier, int id) {

    }

    @Override
    public void delete(int id) {

    }




}
