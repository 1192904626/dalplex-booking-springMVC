/*
 * Written by Yi Ren
 */

package com.dorabmon.dao.court;

import com.dorabmon.dao.EntityDao;
import com.dorabmon.model.Court;
import com.dorabmon.util.DBCPUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class CourtDaoImpl implements CourtDao, EntityDao<Court> {

    private final static Logger logger = LoggerFactory.getLogger(CourtDaoImpl.class);

    private DBCPUtil dbcpUtil = DBCPUtil.getInstance();


    @Override
    public Court setResult() {
        return new Court();
    }

    @Override
    public Court setResult(ResultSet rs) {
        try {
            Court court = new Court(
                    rs.getInt("court_id"),
                    rs.getString("court_name"),
                    rs.getString("court_type"),
                    rs.getInt("capacity"),
                    rs.getString("description")
            );
            return court;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Insert(Court entity) throws SQLException {

        Connection conn = dbcpUtil.getConnection();

        PreparedStatement stmt = conn.prepareStatement("CALL INSERT_COURT_RETURN(?,?,?,?,@VAL)");
        stmt.setString(1, entity.getCourtName());
        stmt.setString(2, entity.getCourtType());
        stmt.setInt(3, entity.getCourtCapacity());
        stmt.setString(4, entity.getCourtDescription());

        stmt.executeUpdate();
        ResultSet rs = stmt.getResultSet();
        if (rs.next()) {
            entity.setCourtId(rs.getInt(1));
        }
        if (stmt != null) {
            stmt.close();
        }
    }

    @Override
    public void Update(Court entity) throws SQLException {
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement("CALL UPDATE_COURT(?,?,?,?,?)");

        stmt.setInt(1, entity.getCourtId());
        stmt.setString(2, entity.getCourtName());
        stmt.setString(3, entity.getCourtType());
        stmt.setInt(4, entity.getCourtCapacity());
        stmt.setString(5, entity.getCourtDescription());

        stmt.executeUpdate();
        if (stmt != null) {
            stmt.close();
        }
    }

    @Override
    public void Delete(String id) throws SQLException {
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement("CALL DELETE_COURT_BY_ID(?)");
        stmt.setInt(1, Integer.parseInt(id));
        stmt.executeUpdate();
        if (stmt != null) {
            stmt.close();
        }

    }

    @Override
    public Court FindById(int id) throws SQLException {
//        TODO
        Connection conn = dbcpUtil.getConnection();
        PreparedStatement stmt = conn.prepareStatement("CALL FIND_COURT_BY_ID(?)");
        stmt.setInt(1, id);
        Court court = null;
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            court = this.setResult(rs);
        }
        rs.close();
        if (stmt != null) {
            stmt.close();
        }
        return court;
    }

    @Override
    public List<Court> FindAll() throws SQLException {

        Connection conn = dbcpUtil.getConnection();
        List<Court> courtList = new ArrayList<>();
        PreparedStatement stmt = conn.prepareStatement("CALL LIST_ALL_COURT");
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            courtList.add(this.setResult(rs));
        }
        rs.close();
        if (stmt != null) {
            stmt.close();
        }
        return courtList;
    }

    @Override
    public List<Court> FindAll(String query) throws SQLException {
        Connection conn = dbcpUtil.getConnection();
        List<Court> courtList = new ArrayList<>();
        PreparedStatement stmt = conn.prepareStatement(query);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            courtList.add(this.setResult(rs));
        }
        rs.close();
        if (stmt != null) {
            stmt.close();
        }
        return courtList;
    }

    @Override
    public List<Court> listCourtsByCourtType(String court_type) throws SQLException {
        List<Court> courtList = new ArrayList<>();

        Connection conn = dbcpUtil.getConnection();
        String sql = "select * from zyzhong.court_table where court_type = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, court_type);

        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            courtList.add(this.setResult(rs));
        }
        rs.close();

        if (stmt != null) {
            stmt.close();
        }

        return courtList;
    }

    @Override
    public List<Court> FindCourtIdListByStudentId(int userid) throws SQLException {
        List<Court> courtList = new ArrayList<>();
        Connection conn = dbcpUtil.getConnection();

        String sql = "select b.court_id,b.court_type, b.court_name,b.description, b.capacity, a.student_id, a.book_time " +
                "from court_booking_table a inner join court_table b " +
                "  on a.court_id = b.court_id " +
                "where a.student_id = ? order by book_time desc;";

        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1,userid);

        ResultSet rs = stmt.executeQuery();
        Court court = null;
        while (rs.next()) {
            court = this.setResult(rs);
            court.setBook_time(rs.getTimestamp("book_time"));
            courtList.add(court);
        }
        rs.close();
        stmt.close();


        return courtList;

    }
}
