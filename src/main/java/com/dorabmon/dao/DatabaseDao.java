/*
 * Written by Yi Ren
 */

package com.dorabmon.dao;

import com.dorabmon.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public abstract class DatabaseDao {

    protected DatabaseConnection databaseConnection;
    protected Connection conn;
    protected PreparedStatement stmt;

    public DatabaseDao() {
        this.databaseConnection = new DatabaseConnection();
        this.conn = databaseConnection.getConnection();
        this.stmt = null;
    }
}
