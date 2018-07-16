package com.dorabmon.service;

import com.dorabmon.dao.UserDao;
import com.dorabmon.dao.UserDaoImpl;
import com.dorabmon.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;


    @Override
    public void Insert(User entity) {

    }

    @Override
    public void Update(User entity) {

    }

    @Override
    public void Delete(User entity) {

    }

    @Override
    public User FindById(int id) {
        try {
            return userDao.FindById(id);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<User> FindAll() {
        return null;
    }
}
