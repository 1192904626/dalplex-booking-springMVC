package com.dorabmon.controller;

import com.dorabmon.service.user.UserService;
import com.dorabmon.service.user.UserServiceImpl;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

public class AdminDashboardController {
    UserService userService = new UserServiceImpl();
    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)

    public ModelAndView admin (HttpServletRequest httpServletRequest) {
        return new ModelAndView("admin");
    }


}
