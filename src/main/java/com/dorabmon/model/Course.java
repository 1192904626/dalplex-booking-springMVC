package com.dorabmon.model;

public class Course {
    private int course_id;
    private String course_name;
    private String course_category;
    private String course_start_date;
    private String course_end_date;
    private String course_start_time;
    private String course_end_time;
    private String course_instructor;
    private String course_cover_image_link;

    public Course(int course_id, String course_name, String course_category, String course_start_date, String course_end_date, String course_start_time, String course_end_time, String course_instructor, String course_cover_image_link) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.course_category = course_category;
        this.course_start_date = course_start_date;
        this.course_end_date = course_end_date;
        this.course_start_time = course_start_time;
        this.course_end_time = course_end_time;
        this.course_instructor = course_instructor;
        this.course_cover_image_link = course_cover_image_link;


    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getCourse_category() {
        return course_category;
    }

    public void setCourse_category(String course_category) {
        this.course_category = course_category;
    }

    public String getCourse_start_date() {
        return course_start_date;
    }

    public void setCourse_start_date(String course_start_date) {
        this.course_start_date = course_start_date;
    }

    public String getCourse_end_date() {
        return course_end_date;
    }

    public void setCourse_end_date(String course_end_date) {
        this.course_end_date = course_end_date;
    }

    public String getCourse_start_time() {
        return course_start_time;
    }

    public void setCourse_start_time(String course_start_time) {
        this.course_start_time = course_start_time;
    }

    public String getCourse_end_time() {
        return course_end_time;
    }

    public void setCourse_end_time(String course_end_time) {
        this.course_end_time = course_end_time;
    }

    public String getCourse_instructor() {
        return course_instructor;
    }

    public void setCourse_instructor(String course_instructor) {
        this.course_instructor = course_instructor;
    }

    public String getCourse_cover_image_link() {
        return course_cover_image_link;
    }

    public void setCourse_cover_image_link(String course_cover_image_link) {
        this.course_cover_image_link = course_cover_image_link;
    }
}
