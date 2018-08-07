package com.dorabmon.dao.court;

import com.dorabmon.dao.EntityDao;
import com.dorabmon.model.CourtBooking;
import com.dorabmon.util.DBCPUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CourtBookingDaoImpl implements CourtBookingDao, EntityDao<CourtBooking> {

    private final static Logger logger = LoggerFactory.getLogger(CourtBookingDaoImpl.class);

    private DBCPUtil dbpool = DBCPUtil.getInstance();


    @Override
    public void Insert(CourtBooking entity) throws SQLException {

        Connection conn = dbpool.getConnection();
        String sql = "INSERT INTO zyzhong.court_booking_table ( court_id, student_id, book_time)\n" +
                "VALUES (?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);

        stmt.setInt(1, entity.getCourt_id());
        stmt.setInt(2, entity.getStudent_id());
        stmt.setTimestamp(3, entity.getBook_time());

        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void Update(CourtBooking entity) throws SQLException {

    }

    @Override
    public void Delete(String id) throws SQLException {

        Connection conn = dbpool.getConnection();
        String sql = "delete from zyzhong.court_booking_table where id = ?" ;
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, Integer.valueOf(id));
        stmt.executeUpdate();
        stmt.close();

    }

    @Override
    public CourtBooking FindById(int id) throws SQLException {
        return null;
    }

    @Override
    public List<CourtBooking> FindAll() throws SQLException {
        return null;
    }

    @Override
    public List<CourtBooking> FindAll(String query) throws SQLException {
        return null;
    }

    @Override
    public Map<Integer, Integer> listCourtBookingByCourtIdArrayAndDate(Integer[] courtIdArr, String date) throws SQLException {

        Connection conn = dbpool.getConnection();
        Map<Integer, Integer> courtBookingMap = new HashMap<Integer, Integer>();

        StringBuilder stringBuilder = new StringBuilder();
        for (Integer str : courtIdArr) {
            stringBuilder.append("?,");
        }

        PreparedStatement stmt = null;
        String sql = "select court_id, count(*) as num " +
                "from court_booking_table where book_time between ? and ? " +
                "and court_id IN(" + stringBuilder.deleteCharAt(stringBuilder.length() - 1) + ") " +
                "group by court_id;";

        int index = 0;

        stmt = conn.prepareStatement(sql);
        stmt.setString(++index, date + " 00:00:00");
        stmt.setString(++index, date + " 23:59:59");

        for (Integer courtId : courtIdArr) {
            stmt.setInt(++index, courtId);
        }

        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            courtBookingMap.put(rs.getInt("court_id"), rs.getInt("num"));
        }

        return courtBookingMap;
    }

    @Override
    public CourtBooking setResult() {
        return null;
    }

    @Override
    public CourtBooking setResult(ResultSet rs) {

        CourtBooking courtBooking = null;
        try {
            courtBooking = new CourtBooking();

            int id = rs.getInt("id");
            int court_id = rs.getInt("court_id");
            int student_id = rs.getInt("student_id");
            Timestamp book_time = rs.getTimestamp("book_time");

            courtBooking.setId(id);
            courtBooking.setCourt_id(court_id);
            courtBooking.setStudent_id(student_id);
            courtBooking.setBook_time(book_time);

        } catch (SQLException e) {

            logger.error("setResult Error:" + e.getMessage());
            throw new RuntimeException(e);
        }
        return courtBooking;
    }

    @Override
    public List<CourtBooking> showOccupiedPeriodsByCourtIdAndDate(Integer court_id, String date) throws SQLException {

        List<CourtBooking> courtBookingList = new ArrayList<CourtBooking>();
        Connection conn = dbpool.getConnection();

        String sql = "select * from court_booking_table where book_time between ? and ? and court_id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        int index = 0;
        stmt.setString(++index, date + " 00:00:00");
        stmt.setString(++index, date + " 23:59:59");
        stmt.setInt(++index, court_id);

        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            courtBookingList.add(this.setResult(rs));
        }
        rs.close();
        stmt.close();

        return courtBookingList;
    }
}
