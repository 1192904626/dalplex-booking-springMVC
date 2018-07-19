package com.dorabmon.service.studentCourse;

import com.dorabmon.dao.student_course.StudentCourseDao;
import com.dorabmon.model.Course;
import com.dorabmon.model.User;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.SQLException;
import java.util.List;

public class StudentCourseServiceImpl implements StudentCourseService {

    @Autowired
    private StudentCourseDao studentCourseDao;

    @Override
    public void Insert(User user, Course course) {
        try {
            studentCourseDao.Insert(user, course);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

    }

    @Override
    public void Update(User user, Course course) {
        try {
            studentCourseDao.Update(user, course);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

    }

    @Override
    public void Delete(User user, Course course) {
        try {
            studentCourseDao.Delete(user, course);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

    }

    @Override
    public List<Course> FindCourseByStudentId(User user) {
        try {
            studentCourseDao.FindCourseByStudentId(user);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
}

