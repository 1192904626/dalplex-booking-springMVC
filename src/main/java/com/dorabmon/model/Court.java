/*
 * Written by Yi Ren
 */

package com.dorabmon.model;

import java.sql.Timestamp;

public class Court {
    private int courtId;
    private String courtName;
    private String courtType;
    private int courtCapacity;
    private String courtDescription;

    private int remains = 12;
    private Timestamp book_time = null;
    private boolean is_expired = false;

    public Court() {
    }

    public Court(String courtName, String courtType, int courtCapacity, String courtDescription) {
        this.courtName = courtName;
        this.courtType = courtType;
        this.courtCapacity = courtCapacity;
        this.courtDescription = courtDescription;
    }

    public Court(int courtId, String courtName, String courtType, int courtCapacity, String courtDescription) {
        this.courtId = courtId;
        this.courtName = courtName;
        this.courtType = courtType;
        this.courtCapacity = courtCapacity;
        this.courtDescription = courtDescription;
    }

    public int getCourtId() {
        return courtId;
    }

    public void setCourtId(int courtId) {
        this.courtId = courtId;
    }

    public String getCourtName() {
        return courtName;
    }

    public void setCourtName(String courtName) {
        this.courtName = courtName;
    }

    public String getCourtType() {
        return courtType;
    }

    public void setCourtType(String courtType) {
        this.courtType = courtType;
    }

    public int getCourtCapacity() {
        return courtCapacity;
    }

    public void setCourtCapacity(int courtCapacity) {
        this.courtCapacity = courtCapacity;
    }

    public String getCourtDescription() {
        return courtDescription;
    }

    public void setCourtDescription(String courtDescription) {
        this.courtDescription = courtDescription;
    }

    public int getRemains() {
        return remains;
    }

    public void setRemains(int remains) {
        this.remains = remains;
    }


    public boolean isIs_expired() {
        return is_expired;
    }

    public void setIs_expired(boolean is_expired) {
        this.is_expired = is_expired;
    }

    public Timestamp getBook_time() {
        return book_time;
    }

    public void setBook_time(Timestamp book_time) {
        this.book_time = book_time;
    }
}
