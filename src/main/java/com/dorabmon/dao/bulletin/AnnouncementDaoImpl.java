package com.dorabmon.dao.bulletin;

import com.dorabmon.dao.EntityDao;
import com.dorabmon.model.Annoucement;
import com.dorabmon.util.DBCPUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Repository
public class AnnouncementDaoImpl implements AnnouncementDao, EntityDao<Annoucement> {

    private final static Logger logger = LoggerFactory.getLogger(AnnouncementDaoImpl.class);
    private DBCPUtil dbpool = DBCPUtil.getInstance();

    @Override
    public void Insert(Annoucement entity) throws SQLException {

        Connection conn = dbpool.getConnection();

        CallableStatement cstmt = conn.prepareCall("{CALL INSERT_ANNOUNCEMENTS_RETURN(?,?,?,?)}");

        cstmt.setString(1, entity.getTitle());
        cstmt.setString(2, entity.getContent());
        cstmt.setDate(3, entity.getValidUntil());
        cstmt.registerOutParameter(4, Types.INTEGER);
        cstmt.executeUpdate();
        entity.setId(cstmt.getInt(4));

        if (cstmt != null){
            cstmt.close();
        }

    }

    @Override
    public void Update(Annoucement entity) throws SQLException {

        Connection conn = dbpool.getConnection();

        PreparedStatement stmt = conn.prepareStatement("CALL UPDATE_ANNOUNCEMENT(?, ?, ?, ?)");

        stmt.setInt(1, entity.getId());
        stmt.setString(2, entity.getTitle());
        stmt.setString(3, entity.getContent());
        stmt.setDate(4, entity.getValidUntil());

        stmt.executeUpdate();
        if (stmt != null){
            stmt.close();
        }

    }

    @Override
    public void Delete(String id) throws SQLException {

        Connection conn = dbpool.getConnection();
        PreparedStatement stmt = conn.prepareStatement("CALL DELETE_ANNOUNCEMENT_BY_ID(?)");
        stmt.setInt(1, Integer.valueOf(id));
        int result = stmt.executeUpdate();
        if (stmt != null){
            stmt.close();
        }

    }

    @Override
    public Annoucement FindById(int id) throws SQLException {

        Connection conn = dbpool.getConnection();
        PreparedStatement stmt = conn.prepareStatement("CALL FIND_ANNOUCENMENT_BY_ID(?)");
        Annoucement annoucement = null;

        stmt.setInt(1, id);

        ResultSet rs = stmt.executeQuery();
        while (rs.next()){
            annoucement =  this.setResult(rs);
        }
        rs.close();

        if(stmt != null)
        {
            stmt.close();
        }

        return annoucement;
    }

    @Override
    public List<Annoucement> FindAll() throws SQLException {
        return null;
    }

    @Override
    public List<Annoucement> FindAll(String query) throws SQLException {
        return null;
    }

    @Override
    public Annoucement setResult() {
        return new Annoucement();
    }

    @Override
    public Annoucement setResult(ResultSet rs) {
        try{
            Annoucement annoucement = new Annoucement();
            annoucement.setId(rs.getInt("id"));
            annoucement.setTitle(rs.getString("title"));
            annoucement.setContent(rs.getString("content"));
            annoucement.setValidUntil(rs.getDate("validUntil"));

            logger.info(annoucement.toString());
            return annoucement;
        }catch(SQLException e) {
            // e.printStackTrace();
            logger.error(e.getMessage());
            throw new RuntimeException(e);

        }
    }

    @Override
    public List<Annoucement> listAnnouncementByPages(int offset, int rows) throws SQLException {

        Connection conn = dbpool.getConnection();
        PreparedStatement stmt = conn.prepareStatement("CALL LIST_ANNOUNCEMENTS_BY_PAGES(?, ?)");
        List<Annoucement> annoucementList = new ArrayList<Annoucement>();

        stmt.setInt(1, offset);
        stmt.setInt(2, rows);

        ResultSet rs = stmt.executeQuery();
        while (rs.next()){
            annoucementList.add(this.setResult(rs));
        }
        rs.close();

        if (stmt != null){
            stmt.close();
        }

        return annoucementList;
    }
}
