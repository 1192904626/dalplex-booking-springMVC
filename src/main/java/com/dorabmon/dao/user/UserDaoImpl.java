/*
 * Written by Ziyun Zhong
 */

package com.dorabmon.dao.user;

import com.dorabmon.dao.EntityDao;
import com.dorabmon.model.User;
import com.dorabmon.util.DBCPUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao, EntityDao<User> {

    private final static Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    private DBCPUtil dbcpUtil = DBCPUtil.getInstance();


    @Override
    public void Insert(User entity) throws SQLException {

        Connection conn = dbcpUtil.getConnection();
        String sql = "CALL INSERT_USER_RETURN(?,?,?,?,?,?,?,@VAL)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setString(1, entity.getPassword());
        stmt.setString(2, entity.getStudent_name());
        stmt.setString(3, entity.getPhone_number());
        stmt.setString(4, entity.getEmail());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stmt.setString(5, sdf.format(new Date()));
        stmt.setInt(6, entity.getMembership_day());
        stmt.setString(7, entity.getStudent_role());
        stmt.executeUpdate();

        ResultSet rs = stmt.getResultSet();
        if (rs.next()) {
            entity.setStudent_id((rs.getInt(1)));
        }
        if(stmt != null){
            stmt.close();
        }


    }

    @Override
    public void Update(User entity) throws SQLException {
        Connection conn = dbcpUtil.getConnection();
        String sql = "CALL UPDATE_USER(?,?,?,?,?,?,?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stmt.setString(2, entity.getPassword());
        stmt.setString(3, entity.getStudent_name());
        stmt.setString(4, entity.getPhone_number());
        stmt.setString(5, sdf.format(new Date()));
        stmt.setInt(6, entity.getMembership_day());
        stmt.setString(7, entity.getStudent_role());
        stmt.setString(1, entity.getEmail());
        stmt.executeUpdate();

        if (stmt != null) {
            stmt.close();
        }

    }

    @Override
    public void Delete(String id) throws SQLException {
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement("CALL DELETE_USER_BY_EMAIL(?)");
        stmt.setString(1, id);
        stmt.executeUpdate();

        if (stmt != null) {
            stmt.close();
        }
    }

    @Override
    public User FindById(int id) throws SQLException {
        Connection conn = dbcpUtil.getConnection();
        User user = null;
        String FIND_BY_ID = "CALL FIND_USER_BY_ID(?)";
        PreparedStatement stmt = conn.prepareStatement(FIND_BY_ID);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            user = this.setResult(rs);
        }
        rs.close();

        if (stmt != null) {
            stmt.close();
        }
        return user;


    }

    @Override
    public List<User> FindAll() throws SQLException {
        List<User> userList = new ArrayList<>();
        Connection conn = dbcpUtil.getConnection();

        PreparedStatement stmt = conn.prepareStatement("CALL LIST_ALL_USER");
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            userList.add(this.setResult(rs));
        }
        rs.close();
        stmt.close();
        return userList;

    }

    @Override
    public List<User> FindAll(String query) throws SQLException {
        List<User> userList = new ArrayList<>();

        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement(query);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            userList.add(this.setResult(rs));
        }
        rs.close();
        stmt.close();
        return userList;

    }

    @Override
    public User setResult() {
        return new User();
    }

    @Override
    public User setResult(ResultSet rs) {
        try {
            User user = new User();
            user.setPhone_number(rs.getString("phone_number"));
            user.setStudent_id(rs.getInt("student_id"));
            user.setStudent_name(rs.getString("student_name"));
            user.setPassword(rs.getString("password"));
            user.setEmail(rs.getString("email"));
            user.setMembership_day(rs.getInt("membership_day"));
            user.setMembership_start_date(rs.getString("membership_start_date"));
            user.setStudent_role(rs.getString("student_role"));
            logger.info(user.toString());
            return user;
        } catch (SQLException e) {
            // e.printStackTrace();
            logger.error(e.getMessage());
            throw new RuntimeException(e);

        }
    }

    @Override
    public User FindByEmail(String email) throws SQLException {
        Connection conn = dbcpUtil.getConnection();

        User user = null;
        String FIND_BY_EMAIL = "CALL FIND_USER_BY_EMAIL(?)";
        PreparedStatement stmt = conn.prepareStatement(FIND_BY_EMAIL);
        stmt.setString(1, email);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            user = this.setResult(rs);
        }
        rs.close();
        if (stmt != null) {
            stmt.close();
        }
        return user;
    }

}