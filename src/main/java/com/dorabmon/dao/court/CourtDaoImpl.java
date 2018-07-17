package com.dorabmon.dao.court;

import com.dorabmon.dao.DatabaseDao;
import com.dorabmon.dao.EntityDao;
import com.dorabmon.dao.UserDaoImpl;
import com.dorabmon.model.Court;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourtDaoImpl extends DatabaseDao implements CourtDao, EntityDao<Court> {

    private final static Logger logger = LoggerFactory.getLogger(CourtDaoImpl.class);

    public CourtDaoImpl() {
        super();
    }

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
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Insert(Court entity) throws SQLException {
        //TODO
        stmt = conn.prepareStatement("CALL INSERT_COURT_RETURN(?,?,?,?,@VAL)");
        stmt.setString(1, entity.getCourtName());
        stmt.setString(2, entity.getCourtTpye());
        stmt.setInt(3, entity.getCourtCapacity());
        stmt.setString(4, entity.getCourtDescription());

        stmt.executeUpdate();
        ResultSet rs = stmt.getResultSet();
        if (rs.next()){
            entity.setCourtId(rs.getInt(1));
        }
        if (stmt != null){
            stmt.close();
        }
    }

    @Override
    public void Update(Court entity) throws SQLException {
        stmt = conn.prepareStatement("CALL UPDATE_COURT(?,?,?,?,?)");

        stmt.setInt(1, entity.getCourtId());
        stmt.setString(2, entity.getCourtName());
        stmt.setString(3, entity.getCourtTpye());
        stmt.setInt(4, entity.getCourtCapacity());
        stmt.setString(5, entity.getCourtDescription());

        stmt.executeUpdate();
        if (stmt != null){
            stmt.close();
        }
    }

    @Override
    public void Delete(String id) throws SQLException {
        //TODO
        stmt = conn.prepareStatement("CALL DELETE_COURT_BY_ID(?)");
        stmt.setInt(1, Integer.parseInt(id));
        stmt.executeUpdate();
        if (stmt != null){
            stmt.close();
        }

    }

    @Override
    public Court FindById(int id) throws SQLException {
//        TODO
        stmt = conn.prepareStatement("CALL FIND_COURT_BY_ID(?)");
        stmt.setInt(1, id);
        Court court = null;
        ResultSet rs = stmt.executeQuery();
        while (rs.next()){
            court = this.setResult(rs);
        }
        rs.close();
        if (stmt != null){
            stmt.close();
        }
        return court;
    }

    @Override
    public List<Court> FindAll() throws SQLException {

        List<Court> courtList = new ArrayList<>();
        stmt = conn.prepareStatement("CALL LIST_ALL_COURT");
        ResultSet rs = stmt.executeQuery();
        while (rs.next()){
            courtList.add(this.setResult(rs));
        }
        rs.close();
        if (stmt != null){
            stmt.close();
        }
        return courtList;
    }

    @Override
    public List<Court> FindAll(String query) throws SQLException {
        List<Court> courtList = new ArrayList<>();
        stmt = conn.prepareStatement(query);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()){
            courtList.add(this.setResult(rs));
        }
        rs.close();
        if (stmt != null){
            stmt.close();
        }
        return courtList;
    }
}