package com.dorabmon.util;


public class RequestJsonParam {

    private String court_type;
    private String date;
    private Integer court_id;

    private Integer student_id;
    private String payload;

    private Integer offset = 0;
    private Integer rows = 5;

    private String keyword = "";

    public String getCourt_type() {
        return court_type;
    }

    public void setCourt_type(String court_type) {
        this.court_type = court_type;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Integer getCourt_id() {
        return court_id;
    }

    public void setCourt_id(Integer court_id) {
        this.court_id = court_id;
    }

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public String getPayload() {
        return payload;
    }

    public void setPayload(String payload) {
        this.payload = payload;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}
