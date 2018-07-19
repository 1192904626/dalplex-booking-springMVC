package com.dorabmon.service;

import com.dorabmon.dao.user.UserDao;
import com.dorabmon.model.User;
import com.dorabmon.service.user.UserService;
import com.dorabmon.service.user.UserServiceImpl;
import com.dorabmon.util.DatabaseConnection;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.util.List;

import static org.junit.Assert.assertEquals;

class UserServiceImplTest {
    UserServiceImpl userService = new UserServiceImpl();
    User user = new User("test","123","123","test@yiren.ca","2018-09-01",2,"user");
    DatabaseConnection databaseConnection = new DatabaseConnection();
    @Test
    void insert() {

        List<User> before = userService.FindAll();
        userService.Insert(user);
        List<User> after = userService.FindAll();
        assertEquals( after.size(), before.size()+1);
    }

    @Test
    void update() {
    }

    @Test
    void delete() {
    }

    @Test
    void findById() {

        databaseConnection.getConnection();
        User u =userService.FindById(28);
        assertEquals("email@qq.com",u.getEmail());
    }

    @Test
    void findAll() {
        databaseConnection.getConnection();
        List<User> userList = userService.FindAll();
        assertEquals(5, userList.size());
    }

    @Test
    void login() {
    }

}