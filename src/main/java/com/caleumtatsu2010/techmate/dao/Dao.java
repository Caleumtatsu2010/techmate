package com.caleumtatsu2010.techmate.dao;

import java.util.List;

public interface Dao<T> {
    public T get(int id);

    public List<T> getAll();

    public void insert(T t);

    public void update(T t, int id);

    public void delete(int id);
}
