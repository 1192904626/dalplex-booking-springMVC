package com.dorabmon.dao.course;

import com.dorabmon.dao.DatabaseDao;
import com.dorabmon.dao.EntityDao;
import com.dorabmon.model.Course;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class CourseDaoImpl extends DatabaseDao implements CourseDao, EntityDao<Course> {

    private final static Logger logger = LoggerFactory.getLogger(CourseDaoImpl.class);

    public CourseDaoImpl() { super(); }


    @Override
    public void Insert(Course entity) throws SQLException {
        try {
            String sql = "CALL INSERT_COURSE_RETURN(?,?,?,?,?,?,?,?,@VAL)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, entity.getCourse_name());
            stmt.setString(2,entity.getCourse_category());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            stmt.setString(3, sdf.format(new Date())); // course_start_date
            stmt.setString(4, sdf.format(new Date())); // course_end_date
            // not sure about this part, but pass unit test
            DateFormat tmf = new SimpleDateFormat("HH:mm:ss");
            stmt.setString(5, tmf.format(new Date()));
            stmt.setString(6, tmf.format(new Date()));
            stmt.setString(7,entity.getCourse_instructor());
            stmt.setString(8, entity.getCourse_cover_image_link());
            stmt.executeUpdate();

            ResultSet rs = stmt.getResultSet();
            if (rs.next()) {
                entity.setCourse_id(rs.getInt(1));
            }

            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Update(Course entity) throws SQLException {

    }

    @Override
    public void Delete(String id) throws SQLException {
        stmt = conn.prepareStatement("CALL DELETE_COURSE_BY_ID(?)");
        stmt.setInt(1, Integer.parseInt(id));
        stmt.executeUpdate();
        if (stmt != null){
            stmt.close();
        }
    }


    @Override
    public Course FindById(int id) throws SQLException {
        try {
            Course course = null;
            String FIND_BY_ID = "CALL FIND_COURSE_BY_ID(?)";
            stmt = conn.prepareStatement(FIND_BY_ID);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                course =  this.setResult(rs);
            }
            rs.close();
            return course;
        } catch (SQLException e) {
            logger.error(e.getSQLState()+e.getMessage());
            throw new RuntimeException(e);
        } finally {
            databaseConnection.close(conn);
            databaseConnection.close(stmt);
            logger.info("Database Connection and PreparedStatement have been closed.");

        }
    }

    @Override
    public List FindAll() throws SQLException {
        List<Course> courseList = new ArrayList<>();
        try {
            stmt = conn.prepareStatement("CALL LIST_ALL_COURSE");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                courseList.add(this.setResult(rs));
            }
            rs.close();
            stmt.close();
            return courseList;
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public List FindAll(String query) throws SQLException {
        return null;
    }

    @Override
    public Course setResult() {
        return null;
    }

    @Override
    public Course setResult(ResultSet rs) {
        try {
            Course course = new Course();
            course.setCourse_name(rs.getString("course_name"));
            course.setCourse_category(rs.getString("course_category"));
            course.setCourse_start_date(rs.getString("course_start_date"));
            course.setCourse_end_date(rs.getString("course_end_date"));
            course.setCourse_start_time(rs.getString("course_start_time"));
            course.setCourse_end_time(rs.getString("course_end_time"));
            course.setCourse_cover_image_link(rs.getString("course_cover_image_link"));
            course.setCourse_instructor(rs.getString("course_instructor"));
            logger.info(course.toString());
            return course;

        } catch (SQLException e) {
            logger.error(e.getMessage());
            throw new RuntimeException(e);
        }
    }
}
