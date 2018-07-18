package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.model.Court;
import com.dorabmon.service.course.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/course")
public class AdminCourseController {
    @Autowired
    private CourseService courseService;
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView addCourse (HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = new ModelAndView("add_course");
        List<Course> courseList = courseService.FindAll();
        modelAndView.addObject("courseList", courseList);
        return modelAndView;
    }

    @RequestMapping(value = "/{courseid}", method = RequestMethod.GET)
    public ModelAndView coursedelete (@PathVariable("courseid") String courseid, HttpServletRequest httpServletRequest) {
        courseService.Delete(courseid);
        // return new list
        ModelAndView modelAndView = new ModelAndView("add_course");
        List<Course> courseList = courseService.FindAll();
        modelAndView.addObject("courseList", courseList);
        return modelAndView;
    }
}
