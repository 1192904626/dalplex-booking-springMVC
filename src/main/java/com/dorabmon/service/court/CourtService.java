package com.dorabmon.service.court;

import com.dorabmon.model.Court;
import com.dorabmon.model.CourtBooking;
import com.dorabmon.service.BaseService;

import java.util.List;

public interface CourtService extends BaseService<Court> {

    List<Court> listCourtsByCourtType(String court_type);

    List<Court> listCourtsByCourtTypeAndDate(String court_type, String date);

    List<String> showValidPeriodsByCourtIdAndDate(Integer court_id, String date);

    boolean createCourtBooking(Integer student_id, Integer court_id, Integer hourofday, String dateStr);


    List<Court> listCourtsByStudentID (int studentId);
}
