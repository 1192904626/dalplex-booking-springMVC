package com.dorabmon.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class DatabaseConnection {

    private final static Logger logger = LoggerFactory.getLogger(DatabaseConnection.class);
    public final static String driverName = "com.mysql.jdbc.Driver";
    public final static String serverName = "35.236.233.72";
    public final static String database = "zyzhong";
    public final static String username = "yiren";
    public final static String password = "yiren";


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



}