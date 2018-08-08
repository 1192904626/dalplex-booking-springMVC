package com.dorabmon.service.course;

import com.dorabmon.dao.course.CourseDao;
import com.dorabmon.model.Course;
import com.dorabmon.service.studentCourse.StudentCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseDao courseDao;
    @Autowired
    private StudentCourseService studentCourseService;

    @Override
    public void Insert(Course entity) {
        try {
            courseDao.Insert(entity);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    // method wrote by Yunfei Guo
    @Override
    public void Update(Course entity) {
        try {
            courseDao.Update(entity);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    // method wrote by Yunfei Guo
    @Override
    public void Delete(String id) {
        try {
            courseDao.Delete(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void UpdateSamePwd(Course entity) {

    }

    @Override
    public Course FindById(int id) {
        try {
            return courseDao.FindById(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Course> FindAll() {
        try {
            return courseDao.FindAll();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean DeleteCheckStudentid(String id) {
        List<Integer> studentList = studentCourseService.FindstudentIdListBycourseId(Integer.parseInt(id));
        if (studentList.size() == 0) {
            Delete(id);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Course> FindOtherCourseByStudentId(int studentId) {
        try {

            return courseDao.FindOtherCourseByStudentId(studentId);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Course> findCourseByKeyword(String keyword) {
        try {
            return courseDao.findCourseByKeyword(keyword);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
