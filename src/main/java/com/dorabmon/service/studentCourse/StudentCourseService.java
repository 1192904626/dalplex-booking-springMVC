package com.dorabmon.service.studentCourse;

import com.dorabmon.model.Course;
import com.dorabmon.model.User;

import java.sql.SQLException;
import java.util.List;

public interface StudentCourseService {
    void Insert(User user, Course course);
    void Update(User user, Course course);
    void Delete(User user, Course course);


    List<Course> FindCourseByStudentId(User user);

}
