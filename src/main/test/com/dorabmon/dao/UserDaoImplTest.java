package com.dorabmon.dao;

import com.dorabmon.model.User;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;

import java.sql.SQLException;
import java.util.List;

import static org.junit.Assert.*;

public class UserDaoImplTest {


    UserDaoImpl userDao = new UserDaoImpl();

    User user = new User("test","123","","1905@dal.ca","",123,"user");


    @org.junit.jupiter.api.BeforeEach
    void setUp(){
         //userDao = new UserDaoImpl();
    }

    @Test
    public void setResultUser() {
    }

    @Test
    public void getUserByID() throws SQLException {

        User user = userDao.FindById(1);
        assertEquals("Yi Ren", user.getStudent_name());
    }

    @Test
    public void insert() throws Exception {
        List<User> before = userDao.FindAll();
        userDao.Insert(user);
        List<User> after = userDao.FindAll();
        assertEquals( after.size(), before.size()+1);

    }

    @Test
    public void update() throws Exception {
    }

    @Test
    public void delete() throws Exception {
    }

    @Test
    public void findById() throws Exception {
    }

    @Test
    public void findAll() throws Exception {
        List<User> userList = userDao.FindAll();
        assertEquals(3,userList.size());
    }

    @Test
    public void findAll1() throws Exception {
    }

    @Test
    public void setResult() throws Exception {
    }

    @Test
    public void setResult1() throws Exception {
    }
}