package com.dorabmon.service;

import java.util.List;

public interface BaseService<T> {
    void Insert(T entity);
    void Update(T entity);
    void Delete(String id);
    T FindById(int id);
    List<T> FindAll();
}
