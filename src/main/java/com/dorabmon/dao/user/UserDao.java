package com.dorabmon.dao.user;

import com.dorabmon.dao.BaseDao;
import com.dorabmon.model.User;

import java.sql.SQLException;

public interface UserDao extends BaseDao<User> {

    User FindByEmail (String email) throws SQLException;

}
