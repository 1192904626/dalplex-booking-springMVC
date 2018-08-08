package com.dorabmon.controller;

import com.dorabmon.model.User;
import com.dorabmon.service.course.CourseService;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/")
public class HomePageController {


    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView admin(HttpServletRequest httpServletRequest) {

        ModelAndView mav;

        if (httpServletRequest.getSession().getAttribute("currentUser") != null) {
            mav = new ModelAndView("homePage");
            User user = (User) httpServletRequest.getSession().getAttribute("currentUser");
            mav.addObject("currentUser", user);

            return mav;

        }
        return new ModelAndView("homePage");
    }
}



