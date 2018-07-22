package com.dorabmon.model;

public class Court {
    private int courtId;
    private String courtName;
    private String courtType;
    private int courtCapacity;
    private String courtDescription;
    private int remains = 12;

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
}
