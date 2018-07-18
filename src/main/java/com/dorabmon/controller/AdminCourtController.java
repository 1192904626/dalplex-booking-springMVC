package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.model.Court;
import com.dorabmon.service.course.CourseService;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminCourtController {

    @Autowired
    private CourtService courtService;


    @RequestMapping(value = "/courtlist", method = RequestMethod.GET)
    public ModelAndView courtlist (HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = new ModelAndView("add_court");
        List<Court> courtList = courtService.FindAll();
        modelAndView.addObject("courtList", courtList);
        return modelAndView;
    }


}
