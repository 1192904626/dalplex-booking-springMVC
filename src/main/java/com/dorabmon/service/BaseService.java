package com.dorabmon.service;

import java.util.List;

public interface BaseService<T> {
    void Insert(T entity);
    void Update(T entity);
    void Delete(T entity);
    T FindById(int id);
    List<T> FindAll();
}
