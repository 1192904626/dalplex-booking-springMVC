package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.service.course.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminCourseController {
    @Autowired
    private CourseService courseService;
    @RequestMapping(value = "/course", method = RequestMethod.GET)
    public ModelAndView addCourse (HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = new ModelAndView("add_course");
        List<Course> courseList = courseService.FindAll();
        modelAndView.addObject("courseList", courseList);
        return modelAndView;
    }
}
