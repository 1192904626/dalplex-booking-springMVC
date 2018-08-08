/*
 * Written by Yi Ren
 */

package com.dorabmon.controller;

import com.dorabmon.model.User;
import com.dorabmon.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Controller
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        if (httpServletRequest.getSession().getAttribute("currentUser") != null) {
            ModelAndView mav = new ModelAndView("homePage");
            User currentUser = (User) httpServletRequest.getSession().getAttribute("currentUser");
            mav.addObject("currentUser", currentUser);
            sendRedirectToProfile(httpServletResponse, currentUser);
            return mav;
        } else {
            return new ModelAndView("login");
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest httpServletRequest,
                              HttpServletResponse httpServletResponse,
                              @RequestParam String email,
                              @RequestParam String password) {
        HttpSession httpSession = httpServletRequest.getSession();
        ModelAndView mav;
        User user = userService.Login(email, password);
        if (user != null) {

            DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
            Date start_date = null;

            try {

                Calendar validUntilCalendar = Calendar.getInstance();
                start_date = fmt.parse(user.getMembership_start_date());
                validUntilCalendar.setTime(start_date);
                validUntilCalendar.add(Calendar.DAY_OF_YEAR, user.getMembership_day());

                if (validUntilCalendar.before(Calendar.getInstance())) {

                    mav = new ModelAndView("login");
                    String validDate = fmt.format(validUntilCalendar.getTime());
                    mav.addObject("loginError", "Your membership has been expired on " + validDate);

                    return mav;

                }
            } catch (ParseException e) {

                e.printStackTrace();
            }

            httpSession.setAttribute("currentUser", user);

            if (user.getStudent_role().equals("user")) {
                //student role
                mav = new ModelAndView("homePage");

            } else {
                //admin goes to dashboard
                mav = new ModelAndView("admin");
            }

            //add ModelAndView object
            mav.addObject("currentUser", user);

            //send redirection based on roles
            sendRedirectToProfile(httpServletResponse, user);
        } else {
            mav = new ModelAndView("login");
            mav.addObject("loginError", "Username or password is incorrect!");
        }

        return mav;
    }

    private void sendRedirectToProfile(HttpServletResponse httpServletResponse, User user) {
        try {
            if (user.getStudent_role().equals("user")) {
                httpServletResponse.sendRedirect("/");
            } else {
                httpServletResponse.sendRedirect("/dashboard");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
