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
import java.io.IOException;

@Controller
public class ForgotPwdController {

    private static final Logger logger = LoggerFactory.getLogger(ForgotPwdController.class);

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
    public ModelAndView displayForgotPasswordPage(){

        return new ModelAndView("forgotPassword");
    }

    @RequestMapping(value = "/forgotPassword", method = RequestMethod.POST)
    public ModelAndView processForgotPasswordForm(@RequestParam("email") String userEmail, @RequestParam("phone") String phone,
                                                  @RequestParam("newpwd") String newPwd, @RequestParam("student_name") String student_name,
                                                  HttpServletRequest request,
                                                  HttpServletResponse response) throws IOException {

        ModelAndView modelAndView ;
        User user = userService.FindByEmail(userEmail);

        if (user!=null)
        {
            if (user.getPhone_number().equals(phone) && user.getStudent_name().equals(student_name))
            {
                user.setPassword(newPwd);
                userService.Update(user);
                modelAndView = new ModelAndView("login");
                response.sendRedirect("/login");
                return modelAndView;
                //modelAndView.addObject("errorMsg","Right email address...please continue");

            }else {

                modelAndView = new ModelAndView("forgotPassword");
                modelAndView.addObject("errorMsg","Phone number, email address, username don't match !");
                return modelAndView;
            }

        }
        else {
            modelAndView = new ModelAndView("forgotPassword");
            modelAndView.addObject("errorMsg", "We didn't find an account for this e-mail address.");
            return modelAndView;
        }
    }


}
