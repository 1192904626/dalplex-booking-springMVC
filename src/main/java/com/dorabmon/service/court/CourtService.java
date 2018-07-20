package com.dorabmon.service.court;

import com.dorabmon.model.Court;
import com.dorabmon.service.BaseService;

import java.util.List;

public interface CourtService extends BaseService<Court> {

    List<Court> listCourtsByCourtType(String court_type);

}
