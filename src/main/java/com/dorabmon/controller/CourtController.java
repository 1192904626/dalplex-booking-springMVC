package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.model.Court;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "court")
public class CourtController {

    @Autowired
    private CourtService courtService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView admin (HttpServletRequest httpServletRequest) {

        ModelAndView mav = new ModelAndView("courttype");

        //mav.addObject("courseList", courseList);

//        mav.addObject("courtList", courtList);
        return mav;
    }

    @RequestMapping(value = "badminton", method = RequestMethod.GET)
    public ModelAndView badmintonCourt(HttpServletRequest httpServletRequest,
                                       HttpServletResponse httpServletResponse){



        return new ModelAndView("court");

    }





}
