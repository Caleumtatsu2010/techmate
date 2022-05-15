package com.caleumtatsu2010.techmate.dao;

import com.caleumtatsu2010.techmate.database.connection.cloud.AstraConnector;
import com.caleumtatsu2010.techmate.database.connection.local.ConnectionUtility;
import com.caleumtatsu2010.techmate.database.query.AccountQueries;
import com.caleumtatsu2010.techmate.models.cart.Cart;
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.SimpleStatement;

import java.sql.SQLException;
import java.util.List;

public class CartDao implements Dao<Cart>{

    private CqlSession cqlSession = null;

    public CartDao() {
        this.cqlSession = AstraConnector.connect();
    }

    @Override
    public List<Cart> getAll() {
        return null;
    }

    @Override
    public Cart get(int id) {
        return null;
    }

    @Override
    public void insert(Cart cart) {
//        cqlSession.execute(
//                SimpleStatement.builder( )
//                        .addPositionalValues(cart.getId(), cart.)
//                        .build());
    }

    @Override
    public void update(Cart cart, int id) {

    }

    @Override
    public void delete(int id) {

    }
}
