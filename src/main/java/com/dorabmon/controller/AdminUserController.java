package com.dorabmon.controller;

import com.dorabmon.model.User;
import com.dorabmon.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping(value = "/adminUser")
public class AdminUserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView addCourse(HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = new ModelAndView("admin_users");
        List<User> userList = userService.FindAll();
        modelAndView.addObject("userList", userList);
        return modelAndView;
    }


    @RequestMapping(value = "/{userid}", method = RequestMethod.GET)
    @ResponseBody
    public String deleteUser(@PathVariable("userid") int userid, HttpServletRequest httpServletRequest) {
        try {
            userService.Delete(String.valueOf(userid));
            return "success";
        } catch (Exception e) {
            return "fail";
        }
    }

    @RequestMapping(value = "/list/{userid}", method = RequestMethod.POST)
    public void updateUser(User user, HttpServletResponse response) {

        userService.UpdateMemberShip(user);

        try {
            response.sendRedirect("/adminUser/list");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/list/{userid}", method = RequestMethod.GET)
    @ResponseBody
    public User getUser(@PathVariable("userid") int userid) {

        return userService.FindById(userid);
    }
}
