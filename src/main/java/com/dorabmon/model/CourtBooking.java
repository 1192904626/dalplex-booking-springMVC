package com.dorabmon.model;

import java.sql.Timestamp;

public class CourtBooking {

    private int id;
    private int court_id;
    private int student_id;
    private java.sql.Timestamp book_time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCourt_id() {
        return court_id;
    }

    public void setCourt_id(int court_id) {
        this.court_id = court_id;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public Timestamp getBook_time() {
        return book_time;
    }

    public void setBook_time(Timestamp book_time) {
        this.book_time = book_time;
    }
}
