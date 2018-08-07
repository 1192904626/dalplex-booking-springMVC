package com.dorabmon.service.course;

import com.dorabmon.model.Course;
import com.dorabmon.service.BaseService;

import java.util.List;

public interface CourseService extends BaseService<Course> {

    boolean DeleteCheckStudentid(String id);
    List<Course> FindOtherCourseByStudentId(int studentId);
}
