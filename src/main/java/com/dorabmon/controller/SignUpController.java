package com.dorabmon.controller;

import com.dorabmon.model.User;
import com.dorabmon.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping(value = "/signup")
public class SignUpController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView signUp(){
        return new ModelAndView("signup");
    }

    @RequestMapping(method = RequestMethod.POST)

    public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
                                @RequestParam String student_name,
                                @RequestParam String email,
                                @RequestParam String password) {
        ModelAndView mav;
        HttpSession httpSession = request.getSession();
        if (userService.FindByEmail(email) == null){
            User user = new User();
            user.setStudent_name(student_name);
            user.setEmail(email);
            user.setPassword(password);
            user.setStudent_role("user");
            userService.Insert(user);

            httpSession.setAttribute("currentUser", user);
            mav = new ModelAndView("/profile");
            mav.addObject("currentUser", user);
            try {
                response.sendRedirect("/profile");
            }catch (IOException e){
                e.printStackTrace();
            }

        } else {
            mav = new ModelAndView("signup");
            mav.addObject("error","This email exists.");
        }

        return new ModelAndView("profile");

    }
    }