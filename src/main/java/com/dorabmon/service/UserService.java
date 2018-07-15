package com.dorabmon.service;

import com.dorabmon.model.User;

import java.sql.SQLException;

public interface UserService {
    User GetUserByID (int id) throws SQLException;
}
