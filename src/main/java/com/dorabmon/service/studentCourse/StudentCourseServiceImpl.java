package com.dorabmon.service.studentCourse;

import com.dorabmon.dao.course.CourseDao;
import com.dorabmon.dao.studentCourse.StudentCourseDao;
import com.dorabmon.model.Course;
import com.dorabmon.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class StudentCourseServiceImpl implements StudentCourseService {

    @Autowired
    private StudentCourseDao studentCourseDao;

    @Autowired
    private CourseDao courseDao;

    @Override
    public void Insert(int userid, int courseid) {
        try {
            studentCourseDao.Insert(userid, courseid);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

    }

    @Override
    public void Update(int userid, int courseid) {
        try {
            studentCourseDao.Update(userid, courseid);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

    }

    @Override
    public void Delete(int userid, int courseid) {
        try {
            studentCourseDao.Delete(userid, courseid);
        }catch (SQLException e){
            throw new RuntimeException(e);
        }

    }

    @Override
    public List<Integer> FindCourseIdListByStudentId(User user) {
        try {
            return studentCourseDao.FindCourseByStudentId(user);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public List<Course> FindCourseListByStudentId(User user) {

        List<Course> courseList = new ArrayList<Course>();
        List<Integer> courseIdList = FindCourseIdListByStudentId(user);
        if(courseIdList!=null && courseIdList.size() > 0)
        {
            try {
                Course course = null;
                for(Integer courseId : courseIdList)
                {
                    course = courseDao.FindById(courseId);
                    if(course != null){
                        courseList.add(course);
                    }

                }

                return courseList;

            } catch (SQLException e) {

                e.printStackTrace();
                return null;
            }
        }

        return null;
    }
}

