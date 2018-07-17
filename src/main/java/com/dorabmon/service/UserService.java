package com.dorabmon.service;

import com.dorabmon.model.User;

import java.sql.SQLException;

public interface UserService extends BaseService<User>{
    User Login(String email, String password);
}
