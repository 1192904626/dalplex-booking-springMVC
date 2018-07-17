package com.dorabmon.service;

import com.dorabmon.dao.UserDao;
import com.dorabmon.dao.UserDaoImpl;
import com.dorabmon.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Override
    public void Insert(User entity) {
        try {
            entity.setPassword(passwordEncoder.encode(entity.getPassword()));
            if (userDao.FindById(entity.getStudent_id()) == null){
                userDao.Insert(entity);
            }
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Update(User entity) {
        try {
            userDao.Update(entity);
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Delete(String id) {
        try {
            userDao.Delete(id);
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
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
        try {
            return userDao.FindAll();
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public User Login(String email, String password) {
        try {
            User user = userDao.FindByEmail(email);
            if (user != null && passwordEncoder.matches(password, user.getPassword())){
                return user;
            }else {
                return null;
            }
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
