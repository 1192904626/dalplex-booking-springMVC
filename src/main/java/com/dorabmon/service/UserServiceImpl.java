package com.dorabmon.service;

import com.dorabmon.dao.UserDao;
import com.dorabmon.dao.UserDaoImpl;
import com.dorabmon.model.User;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;


    @Override
    public User GetUserByID(int id) {
        userDao = new UserDaoImpl();
        return userDao.GetUserByID(id);
    }
}
