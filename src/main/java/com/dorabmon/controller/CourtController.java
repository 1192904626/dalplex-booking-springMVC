package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.model.Court;
import com.dorabmon.service.court.CourtService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CourtController {
    private CourtService courtService;

    @RequestMapping(value = "/admincourt", method = RequestMethod.GET)
    public ModelAndView admin (HttpServletRequest httpServletRequest) {

        ModelAndView mav = new ModelAndView("add_court");

        //mav.addObject("courseList", courseList);

//        mav.addObject("courtList", courtList);
        return mav;
    }

}
