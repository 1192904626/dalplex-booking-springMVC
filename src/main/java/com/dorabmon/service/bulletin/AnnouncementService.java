package com.dorabmon.service.bulletin;


import com.dorabmon.model.Annoucement;
import com.dorabmon.service.BaseService;

import java.util.List;

public interface AnnouncementService extends BaseService<Annoucement> {

    Annoucement FindAnouncementById(int id);

    List<Annoucement> listAnouncementByPages(int offset, int rows);
}
