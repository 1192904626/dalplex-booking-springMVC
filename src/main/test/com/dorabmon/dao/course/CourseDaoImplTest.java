package com.dorabmon.dao.course;

import com.dorabmon.model.Course;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.*;

class CourseDaoImplTest {
    // connect to db
    CourseDao courseDao = new CourseDaoImpl();

    @BeforeEach
    void setUp() {
    }

    @Test
    void insert() throws SQLException {
        Course course = courseDao.FindById(3);
        course.setCourse_name("testing");
        courseDao.Insert(course);

    }

    @Test
    void update() throws SQLException{
            Course course = courseDao.FindById(3);
            course.setCourse_name("badminton");

            courseDao.Update(course);
            Course now = courseDao.FindById(3);
            assertEquals("badminton", now.getCourse_name());

    }

    @Test
    void delete() {
        try {
            courseDao.Delete("4");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    void findById() {
    }

    @Test
    void findAll() {
    }

    @Test
    void findAll1() {
    }
}