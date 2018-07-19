package com.dorabmon.controller;

import com.dorabmon.model.User;
import com.dorabmon.service.user.UserService;
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

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView profile(){
        return new ModelAndView("profile");
    }

//
//
//    @RequestMapping(value = "/edit", method = RequestMethod.GET)
//    public ModelAndView getEditProfile(HttpServletRequest request) {
//        if (request.getSession().getAttribute("currentUser") != null){
//            ModelAndView mav = new ModelAndView("editProfile");
//            User currentUser = (User) request.getSession().getAttribute("currentUser");
//            mav.addObject("currentUser", currentUser);
//
//            return mav;
//        }else {
//            return new ModelAndView("login");
//        }
//
////        ModelAndView mav = new ModelAndView("editProfile");
////        return mav;
//
//    }

//
//    @RequestMapping(value = "/edit", method = RequestMethod.POST)
//    public ModelAndView postEditProfile(@RequestParam String userEmail,
//                                        @RequestParam String userName,
//                                        @RequestParam String phoneNum,
//                                        @RequestParam String password,
//                                        HttpServletRequest request,
//                                        HttpServletResponse response) {
//        ModelAndView mav;
//        HttpSession session = request.getSession();
//        if (session.getAttribute("currentUser") != null) {
//
//            User user = userService.FindByEmail(userEmail);
//            user.setStudent_name(userName);
//            user.setPhone_number(phoneNum);
//            user.setPassword(password);
//            userService.Update(user);
////            userService.Update(user);
//            //    session.setAttribute("currentUser",user);
//            mav = new ModelAndView("profile");
//            try {
//                response.sendRedirect("/profile");
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//            return mav;
//        }
//        try {
//            response.sendRedirect("/login");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        return new ModelAndView("login");
//    }

}
