package com.dorabmon.dao;

import com.dorabmon.model.Course;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class CourseDaoImpl extends DatabaseDao implements CourseDao, EntityDao<Course> {

    private final static Logger logger = LoggerFactory.getLogger(CourseDaoImpl.class);

    public CourseDaoImpl() {
        super();
    }

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
            // not sure about this part
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
    public void Delete(Course entity) throws SQLException {

    }

    @Override
    public Object FindById(int id) throws SQLException {
        return null;
    }

    @Override
    public List FindAll() throws SQLException {
        return null;
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
        return null;
    }
}
