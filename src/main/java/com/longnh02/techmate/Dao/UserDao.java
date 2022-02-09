package com.longnh02.techmate.Dao;

import com.longnh02.techmate.Connection.ConnectionUtils;
import com.longnh02.techmate.Models.Account;
import com.longnh02.techmate.Models.User;

import java.io.File;
import java.io.FileInputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserDao implements Dao<User>{
    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    FileInputStream fs=null;

    @Override
    public User get(int id) {
        //            Blob imageBlob = resultSet.getBlob(yourBlobColumnIndex);
//            InputStream binaryStream = imageBlob.getBinaryStream(0, imageBlob.length());
        return null;
    }

    @Override
    public List<User> getAll() {
        return null;
    }




    @Override
    public void insert(User user) {
        String query = "INSERT INTO user(account_id, first_name, last_name, mobile_phone, citizen_id, email, business_phone , image, created_at, modified_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1,user.getAccountId());
            ps.setString(2,  user.getFirstName());
            ps.setString(3, user.getLastName());
            ps.setInt(4,(user.getMobilePhone()));
            ps.setInt(5, user.getCitizenId());
            ps.setString(6, user.getEmail());
            ps.setInt(7,(user.getBusinessPhone()));
            ps.setBlob(8, user.getImage());
            ps.setTimestamp(9, user.getCreatedAt());
            ps.setTimestamp(10, user.getModifiedAt());

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
    public void update(User user, int id) {
        String query = "UPDATE user set first_name = ?, last_name = ?, mobile_phone= ?, citizen_id= ?, email=?, business_phone=? , image = ?, modified_at =? WHERE id = ?";
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1,  user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setInt(3,(user.getMobilePhone()));
            ps.setInt(4, user.getCitizenId());
            ps.setString(5, user.getEmail());
            ps.setInt(6,(user.getBusinessPhone()));
            ps.setBlob(7, user.getImage());
            ps.setTimestamp(8, user.getModifiedAt());
            ps.setInt(9, id);

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
    public void delete(User user) {
    }
}
