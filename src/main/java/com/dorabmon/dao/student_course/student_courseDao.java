package com.dorabmon.dao.student_course;

import com.dorabmon.dao.BaseDao;
import com.dorabmon.model.Course;
import com.dorabmon.model.User;

import java.sql.SQLException;

public interface student_courseDao {
    void Insert(User user, Course course) throws SQLException;
    void Update(User user, Course course) throws SQLException;
    void Delete(User user, Course course) throws SQLException;

    FindById(int id) throws SQLException;


}
