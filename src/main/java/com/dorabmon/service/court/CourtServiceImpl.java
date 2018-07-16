package com.dorabmon.service.court;

import com.dorabmon.dao.court.CourtDao;
import com.dorabmon.model.Court;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.SQLException;
import java.util.List;

public class CourtServiceImpl implements CourtService {

    @Autowired
    private CourtDao courtDao;

    @Override
    public void Insert(Court entity) {
        try {
            courtDao.Insert(entity);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Update(Court entity) {
        try{
            
        }
    }

    @Override
    public void Delete(Court entity) {

    }

    @Override
    public Court FindById(int id) {
        return null;
    }

    @Override
    public List<Court> FindAll() {
        return null;
    }
}
