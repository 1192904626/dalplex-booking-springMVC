package com.dorabmon.dao;

import com.dorabmon.model.User;
import com.dorabmon.util.DatabaseConnection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl extends DatabaseDao implements UserDao, EntityDao<User>{

    private final static Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    public UserDaoImpl() {
        super();
    }


    @Override
    public void Insert(User entity) throws SQLException {

    }

    @Override
    public void Update(User entity) throws SQLException {

    }

    @Override
    public void Delete(User entity) throws SQLException {

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
            databaseConnection.close(conn);
            databaseConnection.close(stmt);
            logger.info("Database Connection and PreparedStatement have been closed.");
        }
    }

    @Override
    public List<User> FindAll() throws SQLException {
        return null;
    }

    @Override
    public List<User> FindAll(String query) throws SQLException {
        return null;
    }

    @Override
    public User setResult() {
        return null;
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

            logger.info(user.toString());
            return user;
        }catch(SQLException e) {
            // e.printStackTrace();
            logger.error(e.getMessage());
            throw new RuntimeException(e);

        }
    }
}