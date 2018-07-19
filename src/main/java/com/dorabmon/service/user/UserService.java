package com.dorabmon.service.user;

import com.dorabmon.model.User;
import com.dorabmon.service.BaseService;

import java.sql.SQLException;

public interface UserService extends BaseService<User> {
    User Login(String email, String password);
    User FindByEmail(String email);
    void UpdateSamePwd(User entity);
}
