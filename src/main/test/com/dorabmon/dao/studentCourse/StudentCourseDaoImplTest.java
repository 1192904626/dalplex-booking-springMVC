package com.dorabmon.dao.studentCourse;

import com.dorabmon.model.Course;
import com.dorabmon.model.User;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class StudentCourseDaoImplTest {

    StudentCourseDao studentCourseDao = new StudentCourseDaoImpl();
    User user = new User("Ye Fang","123456","902111111","ye.fang@dal.ca","2017-09-01",300,"user");


    @org.junit.jupiter.api.BeforeEach
    void setUp() {

    }

    @Test
    void insert() throws SQLException {

    }

    @Test
    void update() {
    }

    @Test
    void delete() {
    }

    @Test
    void FindCourseListByStudentId() throws Exception {
//        List<Course> courseList = studentCourseDao.FindCourseListByStudentId(user);
//        assertEquals(1, courseList.size());

    }
}