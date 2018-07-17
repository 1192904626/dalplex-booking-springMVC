package com.dorabmon.dao;

import com.dorabmon.model.User;

import java.sql.SQLException;

public interface UserDao extends BaseDao<User>{

    User FindByEmail (String email) throws SQLException;

}
