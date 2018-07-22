package com.dorabmon.service.bulletin;

import com.dorabmon.dao.bulletin.AnnouncementDao;
import com.dorabmon.dao.user.UserDaoImpl;
import com.dorabmon.model.Annoucement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class AnnouncementServiceImpl implements AnnouncementService {

    @Autowired
    protected AnnouncementDao announcementDaoImpl;

    private final static Logger logger = LoggerFactory.getLogger(AnnouncementServiceImpl.class);


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

    }

    @Override
    public void UpdateSamePwd(Annoucement entity) {

    }

    @Override
    public boolean deleteAnnoucementById(String id) {
        try {
            announcementDaoImpl.Delete(id);
            return true;
        } catch (SQLException e) {
            logger.error("Delete Announcement Error: " + e.getMessage());
            return false;
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
