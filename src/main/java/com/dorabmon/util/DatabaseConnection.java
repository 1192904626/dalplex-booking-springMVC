package com.dorabmon.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class DatabaseConnection {

    private final static Logger logger = LoggerFactory.getLogger(DatabaseConnection.class);
   // add database connection setting
    public final static String driverName = "com.mysql.jdbc.Driver";
    public final static String serverName = ;
    public final static String database = ;
    public final static String username = ;
    public final static String password = ;


    public Connection getConnection() {
        String url = "jdbc:mysql://" + serverName + "/" + database;
        try {
            Class.forName(driverName);

            return DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            // e.printStackTrace();
            logger.error(e.getMessage());
            throw new RuntimeException(e);
        }
    }


    public void close(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                // e.printStackTrace();
                logger.error(e.getMessage());
                throw new RuntimeException(e);
            }
        }

    }

    public void close(Statement stmt) {
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                // e.printStackTrace();
                logger.error(e.getMessage());
                throw new RuntimeException(e);
            }
        }

    }
}
