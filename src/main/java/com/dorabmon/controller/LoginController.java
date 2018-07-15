package com.dorabmon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @RequestMapping (value = "/login", method = RequestMethod.GET)

    public ModelAndView login (HttpServletRequest httpServletRequest) {
        return new ModelAndView("login");
    }


}
