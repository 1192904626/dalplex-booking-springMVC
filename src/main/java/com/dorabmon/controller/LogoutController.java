package com.dorabmon.controller;

import com.dorabmon.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class LogoutController {

    private static final Logger logger = LoggerFactory.getLogger(LogoutController.class);


    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public void logoutPOST(HttpServletRequest request, HttpServletResponse response)
    {
        HttpSession session = request.getSession(false);
        if(session.getAttribute("currentUser")==null){

            logger.error("Null user logout action. ");

        }
        else{

            session.removeAttribute("currentUser");
            try {
                response.sendRedirect("/");
            } catch (IOException e) {
                e.printStackTrace();
                logger.error("Logout failed !");
            }


        }

    }
}
