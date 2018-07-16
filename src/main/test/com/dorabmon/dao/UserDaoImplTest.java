package com.dorabmon.dao;

import com.dorabmon.model.User;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.SQLException;
import java.util.List;

import static org.junit.Assert.*;

public class UserDaoImplTest {


    UserDao userDao = new UserDaoImpl();

    User user = new User("test","123","123","test","2018-09-01",123,"user");


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
        User before = userDao.FindById(7);
        System.out.println(before.toString());
        before.setStudent_name("yiren");
        System.out.println(before.toString());
        userDao.Update(before);
        User now = userDao.FindById(7);
        assertEquals("yiren", now.getStudent_name());
    }

    @Test
    public void delete() throws Exception {

        userDao.Delete("123@dal.ca");
        assertNull(userDao.FindById(8));

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