package com.dorabmon.dao.court;

import com.dorabmon.dao.EntityDao;
import com.dorabmon.model.Court;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CourtDaoImpl implements CourtDao, EntityDao<Court> {
    @Override
    public Court setResult() {
        return null;
    }

    @Override
    public Court setResult(ResultSet rs) {
        return null;
    }

    @Override
    public void Insert(Court entity) throws SQLException {

    }

    @Override
    public void Update(Court entity) throws SQLException {

    }

    @Override
    public void Delete(String id) throws SQLException {

    }

    @Override
    public Court FindById(int id) throws SQLException {
        return null;
    }

    @Override
    public List<Court> FindAll() throws SQLException {
        return null;
    }

    @Override
    public List<Court> FindAll(String query) throws SQLException {
        return null;
    }
}
