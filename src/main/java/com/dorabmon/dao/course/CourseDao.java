package com.dorabmon.dao.course;

import com.dorabmon.dao.BaseDao;
import com.dorabmon.model.Course;

import java.sql.SQLException;
import java.util.List;

public interface CourseDao extends BaseDao<Course> {
    List<Course> FindOtherCourseByStudentId(int studentId) throws SQLException;
}
