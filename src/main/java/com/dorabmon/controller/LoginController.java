package com.dorabmon.controller;

import com.dorabmon.model.User;
import com.dorabmon.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest httpServletRequest) {
        if (httpServletRequest.getSession().getAttribute("currentUser") != null){
            ModelAndView mav = new ModelAndView("/profile");
            User currentUser = (User) httpServletRequest.getSession().getAttribute("currentUser");
            mav.addObject("currentUser", currentUser);
            return mav;
        }else {
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
            httpSession.setAttribute("currentUser", user);
            mav = new ModelAndView("profile");
            mav.addObject("currentUser", user);
        } else {
            mav = new ModelAndView("login");
            mav.addObject("loginError", "Username or password is incorrect!");
        }
        //TODO role

        return mav;
    }


}
