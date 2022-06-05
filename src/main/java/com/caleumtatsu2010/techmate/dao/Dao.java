package com.caleumtatsu2010.techmate.dao;

import java.util.List;

public interface Dao<T> {

    public List<T> getAll();

    public T get(int id);

    public void insert(T t);

    public void update(T t, String id);

    public void delete(int id);

}
