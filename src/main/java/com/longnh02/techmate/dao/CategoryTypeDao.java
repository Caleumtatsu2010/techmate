package com.longnh02.techmate.dao;

import com.longnh02.techmate.connection.ConnectionUtils;
import com.longnh02.techmate.models.CategorySection;
import com.longnh02.techmate.models.CategoryType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryTypeDao implements Dao<CategoryType>{
    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private ConnectionUtils connectionUtils;

    @Override
    public CategoryType get(int id) {
        return null;
    }

    @Override
    public List<CategoryType> getAll() {
        String query = "SELECT * FROM techmate.category_type";
        List<CategoryType> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CategoryType categoryType = new CategoryType(rs.getInt("id"), rs.getString("name"),  rs.getString("desc"),  rs.getString("category_section_id"));
                list.add(categoryType);
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

    public List<CategoryType> getAllByCategorySectionId(int id)
    {
        String query = "SELECT * FROM techmate.category_type WHERE category_section_id = ?";
        List<CategoryType> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CategoryType categoryType = new CategoryType(rs.getInt("id"), rs.getString("name"),  rs.getString("desc"),  rs.getString("category_section_id"));
                list.add(categoryType);
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
    public void insert(CategoryType categoryType) {

    }

    @Override
    public void update(CategoryType categoryType, int id) {

    }

    @Override
    public void delete(int id) {

    }
}
