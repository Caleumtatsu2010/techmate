package com.longnh02.techmate.dao;

import com.longnh02.techmate.connection.ConnectionUtils;
import com.longnh02.techmate.database.DatabaseQuery;
import com.longnh02.techmate.models.CategorySection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategorySectionDao implements Dao<CategorySection> {

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtils connectionUtils;

    public CategorySectionDao() {
        connectionUtils = new ConnectionUtils();
    }

    @Override
    public CategorySection get(int id) {
        return null;
    }

    @Override
    public List<CategorySection> getAll() {
        String query = DatabaseQuery.selectAllCateSection;
        List<CategorySection> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CategorySection categorySection = new CategorySection(rs.getInt("id"), rs.getString("name"));
                list.add(categorySection);
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
    public void insert(CategorySection categorySection) {
        String query = DatabaseQuery.insertCateSection;//insert category section query
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);

            ps.setInt(1,categorySection.getId());
            ps.setString(2,  categorySection.getName());

            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        } finally {
            System.out.println("Closing the connection.");
            ConnectionUtils.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void update(CategorySection categorySection, int id) {

    }

    @Override
    public void delete(int id) {

    }
}