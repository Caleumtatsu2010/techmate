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
        String query = "INSERT INTO user(account_id, first_name, last_name, citizen_id, email, business_phone, mobile_phone, image, created_at, modified_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            connection = ConnectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1,user.getAccountId());
            ps.setString(2,  user.getFirstName());
            ps.setString(3, user.getLastName());
            ps.setInt(4, user.getCitizen_id());
            ps.setString(5, user.getEmail());
            ps.setInt(6,(user.getBusinessPhone()));
            ps.setInt(7,(user.getMobilePhone()));
            //insert image
            File f=new File(user.getImage());//pathname
            fs=new FileInputStream(f);
            ps.setBinaryStream(8,fs,(int)f.length());

            //insert current timestamp to mysql datatabase
            ps.setString(9, "CURRENT_TIMESTAMP");
            ps.setString(10, null);
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
    }

    @Override
    public void delete(User user) {
    }
}
