package com.dorabmon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomePageController {
    @RequestMapping(value = "/home_page", method = RequestMethod.GET)

    public ModelAndView admin (HttpServletRequest httpServletRequest) {
        return new ModelAndView("home_page");
    }

}
