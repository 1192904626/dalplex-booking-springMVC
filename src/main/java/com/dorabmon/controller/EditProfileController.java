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
public class EditProfileController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/profile/edit", method = RequestMethod.GET)
    public ModelAndView getEditProfile(HttpServletRequest request) {
        if (request.getSession().getAttribute("currentUser") != null){
            ModelAndView mav = new ModelAndView("editProfile");
            User currentUser = (User) request.getSession().getAttribute("currentUser");
            mav.addObject("currentUser", currentUser);

            return mav;
        }else {
            return new ModelAndView("login");
        }

//        ModelAndView mav = new ModelAndView("editProfile");
//        return mav;

    }


    @RequestMapping(value = "/profile/edit", method = RequestMethod.POST)
    public ModelAndView postEditProfile(@RequestParam String userEmail,
                                        @RequestParam String userName,
                                        @RequestParam String phoneNum,
                                        @RequestParam String password,
                                        HttpServletRequest request,
                                        HttpServletResponse response) throws IOException {
        ModelAndView mav;

        if(request.getSession().getAttribute("currentUser") != null)
        {

            //User user = (User) request.getSession().getAttribute("currentUser");
            User user = userService.FindByEmail(userEmail);

            user.setStudent_name(userName);
            user.setPhone_number(phoneNum);
            user.setEmail(userEmail);

            System.out.println(user.getStudent_name()+","+user.getPhone_number()+"+"+user.getEmail());

            mav= new ModelAndView("profile");

//            if(!user.getPassword().equals(password))
//            {
//                user.setPassword(password);
//
//            }

            user.setPassword(password);

            userService.Update(user);

            System.out.println(user.getStudent_name()+","+user.getPhone_number()+"+"+user.getEmail());

            mav.addObject("currentUser",user);
            response.sendRedirect("/profile");
            return mav;
        }

        response.sendRedirect("/login");

        return new ModelAndView("login");



    }

}
