
/*
 * Written by Yi Ren
 */

package com.dorabmon.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

public interface BaseDao<T> extends Serializable {

    void Insert(T entity) throws SQLException;

    void Update(T entity) throws SQLException;

    void Delete(String id) throws SQLException;

    T FindById(int id) throws SQLException;

    List<T> FindAll() throws SQLException;

    List<T> FindAll(String query) throws SQLException;
}
