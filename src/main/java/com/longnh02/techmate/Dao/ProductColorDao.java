package com.longnh02.techmate.Dao;

import com.longnh02.techmate.Connection.ConnectionUtils;
import com.longnh02.techmate.Models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductColorDao implements Dao<ProductColorDao> {

    private Connection connection = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    @Override
    public ProductColorDao get(int id) {
        return null;
    }

    @Override
    public List<ProductColorDao> getAll() {

        return null;
    }


    @Override
    public void insert(ProductColorDao productColor) {

    }

    @Override
    public void update(ProductColorDao productColor, int id) {

    }

    @Override
    public void delete(ProductColorDao productColor) {

    }
}
