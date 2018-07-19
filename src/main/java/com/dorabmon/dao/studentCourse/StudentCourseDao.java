package com.dorabmon.dao.studentCourse;

import com.dorabmon.dao.BaseDao;
import com.dorabmon.model.Course;
import com.dorabmon.model.User;

import java.sql.SQLException;
import java.util.List;

public interface StudentCourseDao {
    void Insert(User user, Course course) throws SQLException;
    void Update(User user, Course course) throws SQLException;
    void Delete(User user, Course course) throws SQLException;


    List<Course> FindCourseByStudentId(User user) throws SQLException;


}
