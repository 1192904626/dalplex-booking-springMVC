package com.dorabmon.dao.court;

import com.dorabmon.model.Court;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class CourtDaoImplTest {

    CourtDao courtDao = new CourtDaoImpl();

    @Test
    void setResult() {
    }

    @Test
    void setResult1() {
    }

    @Test
    void insert() {
        Court court = new Court("yi","yi",20,"yi");
        try {
            List<Court> old = courtDao.FindAll();
            courtDao.Insert(court);
            List<Court> now = courtDao.FindAll();
            assertEquals(now.size(), old.size()+1);

            courtDao.Delete(String.valueOf(court.getCourtId()));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    void update() throws SQLException{

            Court court = courtDao.FindById(5);
            court.setCourtName("update");
            courtDao.Update(court);
            Court newCourt = courtDao.FindById(5);
            assertEquals("update", newCourt.getCourtName());

    }

    @Test
    void delete() throws SQLException{
        courtDao.Delete(String.valueOf(4));
        assertNull(courtDao.FindById(4));

    }

    @Test
    void findById() throws SQLException{
        Court court = courtDao.FindById(5);
        assertEquals("yiren", court.getCourtName());
    }

    @Test
    void findAll() {
        try{
            assertEquals(4, courtDao.FindAll().size());
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    void findAll1() {
    }

}