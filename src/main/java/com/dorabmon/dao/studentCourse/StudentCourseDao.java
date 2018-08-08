package com.dorabmon.dao.studentCourse;

import com.dorabmon.dao.BaseDao;
import com.dorabmon.model.Course;
import com.dorabmon.model.User;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface StudentCourseDao {
    void Insert(int userid, int courseid) throws SQLException;

    void Update(int userid, int courseid) throws SQLException;

    void Delete(int userid, int courseid) throws SQLException;

    List<Integer> FindstudentBycourseId(int courseId) throws SQLException;

    List<Integer> FindCourseByStudentId(User user) throws SQLException;


    int checkDuplicattion(int userid, int courseid) throws SQLException;


}
