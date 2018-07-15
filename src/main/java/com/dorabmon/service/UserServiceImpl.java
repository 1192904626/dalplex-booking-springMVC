package com.dorabmon.service;

import com.dorabmon.dao.UserDao;
import com.dorabmon.dao.UserDaoImpl;
import com.dorabmon.model.User;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.SQLException;

public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;


    @Override
    public User GetUserByID(int id) throws SQLException {
        userDao = new UserDaoImpl();
        return userDao.FindById(id);
    }
}
