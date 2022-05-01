package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.localdb.ConnectionUtility;
import com.caleumtatsu2010.techmate.database.query.CategoryTypeQueries;
import com.caleumtatsu2010.techmate.models.category.CategoryType;

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
    private ConnectionUtility connectionUtility;

    public CategoryTypeDao() {
        this.connectionUtility = new ConnectionUtility();
    }

    @Override
    public CategoryType get(int id) {
        return null;
    }

    @Override
    public List<CategoryType> getAll() {
        List<CategoryType> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(CategoryTypeQueries.getAll);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CategoryType categoryType = new CategoryType(rs.getInt("id"), rs.getString("name"),  rs.getString("desc"),  rs.getString("category_section_id"));
                list.add(categoryType);
            }
            return list;
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }

    public List<CategoryType> getAllByCateSectId(int id)
    {
        List<CategoryType> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(CategoryTypeQueries.getAllByCateSecId);
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
            ConnectionUtility.closeAll(connection, ps, rs);
        }
        return null;
    }

    @Override
    public void insert(CategoryType categoryType) {
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(CategoryTypeQueries.insert);
            ps.setInt(1,categoryType.getId());
            ps.setString(2,  categoryType.getName());
            ps.setString(3, categoryType.getDesc());
            ps.setString(4,(categoryType.getCategorySectionId()));
            ps.executeUpdate();
            System.out.println("Data Added Successfully");

        } catch (Exception e) {
            System.err.println("Error"+ e.getMessage());
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void update(CategoryType categoryType, int id) {

    }

    @Override
    public void delete(int id) {

    }
}
