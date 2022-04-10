package com.longnh02.techmate.dao;

import com.longnh02.techmate.connection.ConnectionUtils;
import com.longnh02.techmate.database.query.CategoryTypeQueries;
import com.longnh02.techmate.models.category.CategoryType;

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

    public CategoryTypeDao() {
        this.connectionUtils = new ConnectionUtils();

    }

    @Override
    public CategoryType get(int id) {

        return null;
    }

    @Override
    public List<CategoryType> getAll() {
        List<CategoryType> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(CategoryTypeQueries.selectAllCateType);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CategoryType categoryType = new CategoryType(rs.getInt("id"), rs.getString("name"),  rs.getString("desc"),  rs.getString("category_section_id"));
                list.add(categoryType);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }

    public List<CategoryType> getAllByCateSectId(int id)
    {
        List<CategoryType> list = new ArrayList<>();
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(CategoryTypeQueries.getByCateSectionId);
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
            ConnectionUtils.closeAll(connection, ps, rs);
        }
        return null;
    }

    @Override
    public void insert(CategoryType categoryType) {
        try {
            connection = connectionUtils.getConnection();
            ps = connection.prepareStatement(CategoryTypeQueries.insertCategoryType);
            ps.setInt(1,categoryType.getId());
            ps.setString(2,  categoryType.getName());
            ps.setString(3, categoryType.getDesc());
            ps.setString(4,(categoryType.getCategorySectionId()));
            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (Exception e) {
            System.err.println("Error"+ e.getMessage());
        } finally {
            ConnectionUtils.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void update(CategoryType categoryType, int id) {

    }

    @Override
    public void delete(int id) {

    }
}
