package com.longnh02.techmate.Dao;

import java.util.List;

public interface Dao<T> {
    Object get(int id);

    List<T> getAll();

    public void save(T t);

    void update(T t, String[] params);

    void delete(T t);
}
