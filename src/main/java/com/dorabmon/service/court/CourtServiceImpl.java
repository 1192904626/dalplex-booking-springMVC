package com.dorabmon.service.court;

import com.dorabmon.dao.court.CourtDao;
import com.dorabmon.model.Court;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
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
            courtDao.Update(entity);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Delete(String id) {
        try{
            courtDao.Delete(id);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public Court FindById(int id) {
        try{
            return courtDao.FindById(id);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Court> FindAll() {
        try{
            return courtDao.FindAll();
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
}
