package com.dorabmon.controller;

import com.dorabmon.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminDashboardController {


    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView admin(HttpServletRequest httpServletRequest) {
        if (httpServletRequest.getSession().getAttribute("currentUser") != null) {
            User admin = (User) httpServletRequest.getSession().getAttribute("currentUser");
            if (admin.getStudent_role().equals("admin")) {
                return new ModelAndView("admin");
            }
        }
        return new ModelAndView("homePage");
    }


}
