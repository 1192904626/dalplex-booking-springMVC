package com.dorabmon.dao;

import com.dorabmon.model.User;
import com.dorabmon.util.DatabaseConnection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao{

    private DatabaseConnection databaseConnection = new DatabaseConnection();
    private final static Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);



    public User setResultUser(ResultSet rs) {

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

    @Override
    public User GetUserByID(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = databaseConnection.getConnection();
            String FIND_BY_ID = "CALL FIND_USER_BY_ID(?)";
            stmt = conn.prepareStatement(FIND_BY_ID);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            logger.info("database connection success");
            System.out.print("databae connection success");

            if (rs.next()) {
                return setResultUser(rs);
            } else {
                return null;
            }

        }catch (SQLException e){
            logger.error(e.getSQLState()+e.getMessage());
            throw new RuntimeException(e);
        }finally {
            databaseConnection.close(conn);
            databaseConnection.close(stmt);
            logger.info("Database Connection and PreparedStatement have been closed.");
        }
    }
}