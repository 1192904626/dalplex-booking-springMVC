package com.dorabmon.dao;

import com.dorabmon.model.User;
import com.dorabmon.util.DatabaseConnection;
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
public class UserDaoImpl extends DatabaseDao implements UserDao, EntityDao<User>{

    private final static Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    public UserDaoImpl() {
        super();
    }


    @Override
    public void Insert(User entity) throws SQLException {
        try {
            String sql = "CALL INSERT_USER_RETURN(?,?,?,?,?,?,?,@VAL)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, entity.getPassword());
            stmt.setString(2, entity.getStudent_name());
            stmt.setString(3, entity.getPhone_number());
            stmt.setString(4, entity.getEmail());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            stmt.setString(5,sdf.format(new Date()));
            stmt.setInt(6, entity.getMembership_day());
            stmt.setString(7, entity.getStudent_role());
            stmt.executeUpdate();

            ResultSet rs = stmt.getResultSet();
            if (rs.next()){
                entity.setStudent_id((rs.getInt(1)));
            }
            stmt.close();
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Update(User entity) throws SQLException {
        String sql = "CALL UPDATE_USER(?,?,?,?,?,?,?)";

//        variable order should follow the first line (temp variable) in stored procedure
        stmt = conn.prepareStatement(sql);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stmt.setString(2, entity.getPassword());
        stmt.setString(3, entity.getStudent_name());
        stmt.setString(4, entity.getPhone_number());
        stmt.setString(5, sdf.format(new Date()));
        stmt.setInt(6, entity.getMembership_day());
        stmt.setString(7, entity.getStudent_role());
        stmt.setString(1, entity.getEmail());
        stmt.executeUpdate();

        if (stmt != null){
            stmt.close();
        }

    }

    @Override
    public void Delete(String id) throws SQLException {
        stmt = conn.prepareStatement("CALL DELETE_USER_BY_EMAIL(?)");
        stmt.setString(1, id);
        stmt.executeUpdate();

        if (stmt != null){
            stmt.close();
        }
    }

    @Override
    public User FindById(int id) throws SQLException {
        try {
            User user = null;
            String FIND_BY_ID = "CALL FIND_USER_BY_ID(?)";
            stmt = conn.prepareStatement(FIND_BY_ID);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                user =  this.setResult(rs);
            }
            rs.close();
            return user;

        }catch (SQLException e){
            logger.error(e.getSQLState()+e.getMessage());
            throw new RuntimeException(e);
        }finally {
            databaseConnection.close(stmt);
            logger.info("Database Connection and PreparedStatement have been closed.");
        }
    }

    @Override
    public List<User> FindAll() throws SQLException {
        List<User> userList = new ArrayList<>();
        try {
            stmt = conn.prepareStatement("CALL LIST_ALL_USER");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                userList.add(this.setResult(rs));
            }
            rs.close();
            stmt.close();
            return userList;
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<User> FindAll(String query) throws SQLException {
        List<User> userList = new ArrayList<>();
        try {
            stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                userList.add(this.setResult(rs));
            }
            rs.close();
            stmt.close();
            return userList;
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public User setResult() {
        return new User();
    }

    @Override
    public User setResult(ResultSet rs) {
        try{
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
        }catch(SQLException e) {
            // e.printStackTrace();
            logger.error(e.getMessage());
            throw new RuntimeException(e);

        }
    }
}