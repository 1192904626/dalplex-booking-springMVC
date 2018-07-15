package com.dorabmon.model;

public class User {
    private String student_name;
    private String password;
    private int student_id;
    private String phone_number;
    private String email;
    private String membership_start_date;
    private int membership_day;
    private String student_role;

    public User() {
    }

    public User(String student_name, String password, String phone_number, String email, String membership_start_date, int membership_day, String student_role) {
        this.student_name = student_name;
        this.password = password;
        this.phone_number = phone_number;
        this.email = email;
        this.membership_start_date = membership_start_date;
        this.membership_day = membership_day;
        this.student_role = student_role;
    }

    public User(String student_name, String password, int student_id, String phone_number, String email, String membership_start_date, int membership_day, String student_role) {
        this.student_name = student_name;
        this.password = password;
        this.student_id = student_id;
        this.phone_number = phone_number;
        this.email = email;
        this.membership_start_date = membership_start_date;
        this.membership_day = membership_day;
        this.student_role = student_role;
    }

    public String getStudent_role() {
        return student_role;
    }

    public void setStudent_role(String student_role) {
        this.student_role = student_role;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMembership_start_date() {
        return membership_start_date;
    }

    public void setMembership_start_date(String membership_start_date) {
        this.membership_start_date = membership_start_date;
    }

    public int getMembership_day() {
        return membership_day;
    }

    public void setMembership_day(int membership_day) {
        this.membership_day = membership_day;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
