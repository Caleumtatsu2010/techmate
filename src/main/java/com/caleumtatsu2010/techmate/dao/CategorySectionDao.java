package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.ConnectionUtility;
import com.caleumtatsu2010.techmate.database.query.CategorySectionQueries;
import com.caleumtatsu2010.techmate.models.category.CategorySection;

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
    private ConnectionUtility connectionUtility;

    public CategorySectionDao() {
        connectionUtility = new ConnectionUtility();
    }

    @Override
    public CategorySection get(int id) {
        return null;
    }

    @Override
    public List<CategorySection> getAll() {
        List<CategorySection> list = new ArrayList<>();
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(CategorySectionQueries.getAll);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CategorySection categorySection = new CategorySection(rs.getInt("id"), rs.getString("name"));
                list.add(categorySection);
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
    public void insert(CategorySection categorySection) {
        String query = CategorySectionQueries.insert;//insert category section query
        try {
            connection = connectionUtility.getConnection();
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
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }

    @Override
    public void update(CategorySection categorySection, int id) {

    }

    @Override
    public void delete(int id) {
        String query = CategorySectionQueries.delete;
        try {
            connection = connectionUtility.getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1,  id);
            System.out.println("Delete Successfully");
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Delete");
        } finally {
            ConnectionUtility.closeAll(connection, ps, rs);
        }
    }
}
