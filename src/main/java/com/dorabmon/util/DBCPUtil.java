package com.dorabmon.util;

import org.apache.commons.dbcp.BasicDataSourceFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import javax.sql.DataSource;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class DBCPUtil {

    private final static Logger logger = LoggerFactory.getLogger(DBCPUtil.class);

    private static DBCPUtil dbcpUtilInstance = null;
    private static DataSource dataSource;
    private static Properties properties = new Properties();

    private DBCPUtil(){
        init();
    }

    private void init(){

        try{
            Resource resource = new ClassPathResource("jdbc.properties");
            InputStream resourceInputStream = resource.getInputStream();
            properties.load(resourceInputStream);
        }
        catch(IOException e){
            logger.error(e.getMessage());
            throw new RuntimeException(e);
        }

        try{
            dataSource = BasicDataSourceFactory.createDataSource(properties);
        }catch(Exception e){
            logger.error(e.getMessage());
            throw new RuntimeException(e);
        }

    }

    public static DBCPUtil getInstance(){
        if(dbcpUtilInstance == null)
        {
            dbcpUtilInstance = new DBCPUtil();
        }

        return dbcpUtilInstance;
    }

    public Connection getConnection(){

        Connection connection = null;
        try{
            connection = dataSource.getConnection();
            connection.setAutoCommit(false);
        }
        catch(SQLException e){
            logger.error(e.getMessage());
            throw new RuntimeException(e);
        }

        return connection;
    }
}
