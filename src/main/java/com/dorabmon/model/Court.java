package com.dorabmon.model;

public class Court {
    private int courtId;
    private String courtName;
    private String courtTpye;
    private int courtCapacity;
    private String courtDescription;

    public Court() {
    }

    public Court(String courtName, String courtTpye, int courtCapacity, String courtDescription) {
        this.courtName = courtName;
        this.courtTpye = courtTpye;
        this.courtCapacity = courtCapacity;
        this.courtDescription = courtDescription;
    }

    public Court(int courtId, String courtName, String courtTpye, int courtCapacity, String courtDescription) {
        this.courtId = courtId;
        this.courtName = courtName;
        this.courtTpye = courtTpye;
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

    public String getCourtTpye() {
        return courtTpye;
    }

    public void setCourtTpye(String courtTpye) {
        this.courtTpye = courtTpye;
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
}
