package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.service.course.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping(value = "/course")
public class AdminCourseController {
    @Autowired
    private CourseService courseService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView addCourse(HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = new ModelAndView("add_course");
        List<Course> courseList = courseService.FindAll();
        modelAndView.addObject("courseList", courseList);
        return modelAndView;
    }

    @RequestMapping(value = "/{courseid}", method = RequestMethod.DELETE)
    @ResponseBody
    public String coursedelete(@PathVariable("courseid") String courseid, HttpServletRequest httpServletRequest) {
        try {
            Boolean result = courseService.DeleteCheckStudentid(courseid);
            if (result) {
                return "true";
            } else {
                return "false";
            }
        } catch (Exception e) {
            return "false";
        }

    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView courseUpdate(@ModelAttribute Course course, HttpServletRequest httpServletRequest) {
        try {
            courseService.Update(course);
            ModelAndView modelAndView = new ModelAndView("add_course");
            List<Course> courseList = courseService.FindAll();
            modelAndView.addObject("courseList", courseList);
            return modelAndView;
        } catch (Exception e) {
            return null;
        }

    }

    @RequestMapping(value = "/{courseid}", method = RequestMethod.GET)
    @ResponseBody
    public Course courseFetch(@PathVariable("courseid") int courseid, HttpServletRequest httpServletRequest) {
        try {
            return courseService.FindById(courseid);
        } catch (Exception e) {
            return null;
        }

    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView courseInsert(@ModelAttribute Course course, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        try {
            courseService.Insert(course);
            // redirect to list course
            ModelAndView modelAndView = new ModelAndView("add_course");
            List<Course> courseList = courseService.FindAll();
            modelAndView.addObject("courseList", courseList);
            return modelAndView;
        } catch (Exception e) {
            return null;
        }
    }
}
