package com.dorabmon.service.bulletin;

import com.dorabmon.dao.bulletin.AnnouncementDao;
import com.dorabmon.model.Annoucement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {

    @Autowired
    protected AnnouncementDao announcementDaoImpl;


    @Override
    public Annoucement FindAnouncementById(int id) {
        try {

            return announcementDaoImpl.FindById(id);

        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Annoucement> listAnouncementByPages(int offset, int rows) {

        try {

            return announcementDaoImpl.listAnnouncementByPages(offset, rows);

        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }

    @Override
    public void Insert(Annoucement entity) {

        try {

            announcementDaoImpl.Insert(entity);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void Update(Annoucement entity) {

        try {

            announcementDaoImpl.Update(entity);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void Delete(String id) {

        try {

            announcementDaoImpl.Delete(id);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public Annoucement FindById(int id) {
        return null;
    }

    @Override
    public List<Annoucement> FindAll() {
        return null;
    }
}
