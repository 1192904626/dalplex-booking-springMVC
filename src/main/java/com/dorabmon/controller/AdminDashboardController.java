package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.model.Court;
import com.dorabmon.service.course.CourseService;
import com.dorabmon.service.court.CourtService;
import com.dorabmon.service.user.UserService;
import com.dorabmon.service.user.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AdminDashboardController {


    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView admin(HttpServletRequest httpServletRequest) {

        return new ModelAndView("admin");
    }


}
