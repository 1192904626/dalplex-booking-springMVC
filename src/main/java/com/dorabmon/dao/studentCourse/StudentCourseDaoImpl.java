package com.dorabmon.dao.studentCourse;


import com.dorabmon.model.User;
import com.dorabmon.util.DBCPUtil;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentCourseDaoImpl implements StudentCourseDao {
    private final static Logger logger = LoggerFactory.getLogger(StudentCourseDaoImpl.class);

    private DBCPUtil dbcpUtil = DBCPUtil.getInstance();

    @Override
    public void Insert(int userid, int courseid) throws SQLException {
        String sql = "CALL INSERT_STUDENT_COURSE_RETURN(?,?,@VAL)";
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, userid);
        stmt.setInt(2, courseid);
        stmt.executeUpdate();

        stmt.close();
    }

    @Override
    public void Update(int userid, int courseid) throws SQLException {
//        String sql = "CALL UPDATE_STUDENT_COURSE_RETURN(?,?,@VAL)";
//        stmt = conn.prepareStatement(sql);
//        stmt.setInt(1,user.getStudent_id());
//        stmt.setInt(2, course.getCourse_id());
//        stmt.executeUpdate();
//
//        stmt.close();

    }

    @Override
    public void Delete(int userid, int courseid) throws SQLException {
        String sql = "CALL DELETE_STUDENT_COURSE_BY_COURSE_ID(?,?)";
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, userid);
        stmt.setInt(2, courseid);
        stmt.executeUpdate();

        if (stmt != null) {
            stmt.close();
        }


    }

    @Override
    public List<Integer> FindstudentBycourseId(int courseId) throws SQLException {
        List<Integer> studentIdList = new ArrayList<Integer>();
//        FIND_STUDENT_COURSE_BY_COURSE_ID
        String sql = "CALL FIND_STUDENT_COURSE_BY_COURSE_ID(?)";
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, courseId);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            studentIdList.add(rs.getInt("student_id"));
        }
        rs.close();
        if (stmt != null) {
            stmt.close();
        }

        return studentIdList;

    }


    @Override
    public List<Integer> FindCourseByStudentId(User user) throws SQLException {
        List<Integer> courseIdList = new ArrayList<Integer>();
        String sql = "CALL FIND_STUDENT_COURSE_BY_STUDENT_ID(?)";
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, user.getStudent_id());
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            courseIdList.add(rs.getInt("course_id"));
        }
        rs.close();
        if (stmt != null) {
            stmt.close();
        }

        return courseIdList;
    }



    @Override
    public int checkDuplicattion(int userid, int courseid) throws SQLException {
        int exist = 0;
        String sql = "CALL CHECK_DUPLICATE_USERID_COURSEID(?,?)";
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, userid);
        stmt.setInt(2, courseid);
        ResultSet rs = stmt.executeQuery();


        if (rs.next()) {
            exist = rs.getInt("id");
        }
        rs.close();
        if (stmt != null) {
            stmt.close();
        }
        return exist;

    }


}
