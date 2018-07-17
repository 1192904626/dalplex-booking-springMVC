package com.dorabmon.dao.court;

import com.dorabmon.model.Court;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;

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
            
            courtDao.Insert(court);


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    void update() {
    }

    @Test
    void delete() {
    }

    @Test
    void findById() {
    }

    @Test
    void findAll() {
        try{
            assertEquals(3, courtDao.FindAll().size());
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    void findAll1() {
    }

}