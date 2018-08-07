package com.dorabmon.service.studentCourse;

import com.dorabmon.model.Course;
import com.dorabmon.model.User;

import java.sql.SQLException;
import java.util.List;

public interface StudentCourseService {
    void Insert(int userid, int courseid);
    void Update(int userid, int courseid);
    void Delete(int userid, int courseid);


    List<Integer> FindCourseIdListByStudentId(User user);

    List<Integer> FindstudentIdListBycourseId(int courseId);

    List<Course> FindCourseListByStudentId(User user);

    int DuplicateCheck(int userid, int courseid);



}
