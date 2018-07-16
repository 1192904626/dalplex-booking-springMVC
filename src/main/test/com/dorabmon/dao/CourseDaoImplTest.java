package com.dorabmon.dao;

import com.dorabmon.model.Course;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class CourseDaoImplTest {

    CourseDaoImpl courseDao = new CourseDaoImpl();

    Course course = new Course("test","cs","2019/01/01","2019/08/08","16:00","19:00","Fangye Tang","test");

    @org.junit.jupiter.api.BeforeEach
    void setUp(){
        //courseDao = new CourseDaoImpl();
    }

    @Test
    public void getCourseByID() throws SQLException {
        Course course = courseDao.FindById(1);
        assertEquals("yoga101", course.getCourse_name());
    }

    @Test
    void insert() throws Exception {
        List<Course> before = courseDao.FindAll();
        courseDao.Insert(course);
        List<Course> after = courseDao.FindAll();
        assertEquals( after.size(), before.size()+1);
    }

    @Test
    void update() {
    }

    @Test
    void delete() {
    }

    @Test
    void findById() {
    }

    @Test
    void findAll() {
    }

    @Test
    void findAll1() throws Exception {
        List<Course> courseList = courseDao.FindAll();
        // please check the actuall number in the database
        // if you successfully insert, number = number + 1
        assertEquals(4, courseList.size());
    }

    @Test
    void setResult() {
    }

    @Test
    void setResult1() {
    }
}