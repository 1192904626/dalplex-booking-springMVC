package com.dorabmon.dao;

import com.dorabmon.model.User;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class UserDaoImplTest {

    UserDaoImpl userDao = new UserDaoImpl();;
    @BeforeEach
    void setUp(){
         //userDao =

    }

    @Test
    public void setResultUser() {
    }

    @Test
    public void getUserByID() throws SQLException {

        User user = userDao.FindById(1);
        assertEquals("Yi Ren", user.getStudent_name());
    }
}