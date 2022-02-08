package com.longnh02.techmate.Dao;

import java.util.List;

public interface Dao<T> {
    public T get(int id);

    public List<T> getAll();

    public void insert(T t);

    public void update(T t, int id);

    public void delete(T t);
}
