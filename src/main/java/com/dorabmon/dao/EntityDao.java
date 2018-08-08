/*
 * Written by Yi Ren
 */

package com.dorabmon.dao;

import java.sql.ResultSet;

public interface EntityDao<T> {

    T setResult();

    T setResult(ResultSet rs);
}
