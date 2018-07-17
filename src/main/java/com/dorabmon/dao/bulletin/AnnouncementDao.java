package com.dorabmon.dao.bulletin;

import com.dorabmon.dao.BaseDao;
import com.dorabmon.model.Annoucement;

import java.sql.SQLException;
import java.util.List;

public interface AnnouncementDao extends BaseDao<Annoucement> {

    List<Annoucement> listAnnouncementByPages(int offset, int rows) throws SQLException;
}
