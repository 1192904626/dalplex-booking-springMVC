/*
 * Written by Yi Ren
 */

package com.dorabmon.service.court;

import com.dorabmon.dao.court.CourtBookingDao;
import com.dorabmon.dao.court.CourtDao;
import com.dorabmon.model.Court;
import com.dorabmon.model.CourtBooking;
import com.dorabmon.util.ConstantsUitls;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

@Service
public class CourtServiceImpl implements CourtService {

    private final static Logger logger = LoggerFactory.getLogger(CourtServiceImpl.class);

    @Autowired
    private CourtDao courtDao;

    @Autowired
    private CourtBookingDao courtBookingDao;

    @Override
    public void Insert(Court entity) {
        try {
            courtDao.Insert(entity);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Update(Court entity) {
        try {
            courtDao.Update(entity);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void Delete(String id) {
        try {
            courtDao.Delete(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void UpdateSamePwd(Court entity) {

    }

    @Override
    public Court FindById(int id) {
        try {
            return courtDao.FindById(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Court> FindAll() {
        try {
            return courtDao.FindAll();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Court> listCourtsByCourtType(String court_type) {

        List<Court> courtList = null;
        try {

            courtList = courtDao.listCourtsByCourtType(court_type);

        } catch (SQLException e) {
            logger.error("Error listCourtsByCourtType:" + e.getMessage());
            e.printStackTrace();
        }
        return courtList;
    }

    @Override
    public List<Court> listCourtsByCourtTypeAndDate(String court_type, String date) {

        List<Court> courtList = listCourtsByCourtType(court_type);
        if (courtList == null || courtList.size() == 0) {
            return null;
        }

        List<Integer> court_id_list = new ArrayList<Integer>();

        for (Court court : courtList) {
            court_id_list.add(court.getCourtId());
        }

        Integer[] court_id_array = court_id_list.toArray(new Integer[court_id_list.size()]);

        try {

            Map<Integer, Integer> courtIdNumMap = null;
            courtIdNumMap = courtBookingDao.listCourtBookingByCourtIdArrayAndDate(court_id_array, date);

            for (Court court : courtList) {

                if (courtIdNumMap.containsKey(court.getCourtId())) {
                    court.setRemains(court.getRemains() - courtIdNumMap.get(court.getCourtId()));
                }
            }

            return courtList;

        } catch (SQLException e) {

            logger.error("listCourtsByCourtTypeAndDate error:" + e.getMessage());
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public List<String> showValidPeriodsByCourtIdAndDate(Integer court_id, String date) {

        Boolean[] occpupied = new Boolean[]{false, false, false, false, false, false, false, false, false, false, false, false};

        try {
            List<CourtBooking> courtBookingList = null;
            courtBookingList = this.courtBookingDao.showOccupiedPeriodsByCourtIdAndDate(court_id, date);
            Date dateTime = null;


            Calendar calendar = Calendar.getInstance();
            int hourIndex;
            for (CourtBooking courtBooking : courtBookingList) {
                dateTime = courtBooking.getBook_time();
                calendar.setTime(dateTime);
                hourIndex = calendar.get(Calendar.HOUR_OF_DAY) - 9;
                occpupied[hourIndex] = true;
            }

            List<String> resultList = new ArrayList<String>();
            for (int i = 0; i < 12; i++) {
                if (!occpupied[i]) {
                    resultList.add(ConstantsUitls.arrayAll12Periods[i]);
                }
            }

            return resultList;

        } catch (SQLException e) {
            logger.error("showValidPeriodsByCourtIdAndDate error:" + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public boolean createCourtBooking(Integer student_id, Integer court_id, Integer hourofday, String dateStr) {

        CourtBooking courtBooking = new CourtBooking();
        courtBooking.setCourt_id(court_id);
        courtBooking.setStudent_id(student_id);
        String dateTime = dateStr + " " + String.format("%02d", hourofday + 9) + ":00:00";

        java.sql.Timestamp sqlTimeStamp = getSQLDate(dateTime);
        if(sqlTimeStamp == null){

            return false;
        }
        courtBooking.setBook_time(sqlTimeStamp);

        try {
            this.courtBookingDao.Insert(courtBooking);
            return true;

        } catch (SQLException e) {

            logger.error("createCourtBooking insert date error:" + e.getMessage());
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public List<Court> listCourtsByStudentID(int studentId) {
        List<Court> courtList = null;

        try {

            courtList = courtDao.FindCourtIdListByStudentId(studentId);
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());

            if(courtList!=null && courtList.size() > 0){

                for(Court court : courtList){
                    if(court.getBook_time().before(timestamp)){
                        court.setIs_expired(true);
                    }
                }
            }

        } catch (SQLException e) {
            logger.error("Error listCourtsByStudentID:" + e.getMessage());
            e.printStackTrace();
        }
        return courtList;
    }

    private java.sql.Timestamp getSQLDate(String dateStr) {

        java.sql.Timestamp ts = java.sql.Timestamp.valueOf(dateStr);

        return ts;

//        DateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//
//
//
//        try {
//            Date date = format.parse(dateStr);
//            java.sql.Timestamp sqlTime = new java.sql.Timestamp(date.getTime());
//
//            return sqlTime;
//
//        } catch (ParseException e) {
//            logger.error("createCourtBooking ParseException " + e.getMessage());
//            e.printStackTrace();
//            return null;
//        }

    }

    @Override
    public boolean deleteBookingCourtById(String id) {

        try {
            courtBookingDao.Delete(id);
            return true;

        } catch (SQLException e) {

            logger.error("Error deleteBookingCourtById:" + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Court> searchCourtsbyKeyword(String keyword) {

        List<Court> courtList = null;
        try {

            if(StringUtils.isEmpty(keyword)){
                courtList = courtDao.FindAll();
            }
            else
            {
                courtList = courtDao.getCourtListByKeyword(keyword);
            }


        } catch (SQLException e) {

            logger.error("Error searchCourtsbyKeyword:" + e.getMessage());
            e.printStackTrace();
        }

        return courtList;
    }
}
