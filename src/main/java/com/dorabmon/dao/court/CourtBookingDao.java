package com.dorabmon.dao.court;

import com.dorabmon.dao.BaseDao;
import com.dorabmon.model.CourtBooking;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface CourtBookingDao extends BaseDao<CourtBooking> {

    Map<Integer, Integer> listCourtBookingByCourtIdArrayAndDate(Integer[] courtIdArr, String date) throws SQLException;

    List<CourtBooking> showOccupiedPeriodsByCourtIdAndDate(Integer court_id, String date) throws SQLException;

}
