package com.dorabmon.util;

import com.dorabmon.model.User;
import com.dorabmon.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginHandlerInterceptor implements HandlerInterceptor {

    private static final Logger logger = LoggerFactory.getLogger(LoginHandlerInterceptor.class);
    private static String[] urlSets = {"/", "login", "signup"};

    @Autowired
    private UserService userService;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String requestUri = httpServletRequest.getRequestURI();
        String contextPath = httpServletRequest.getContextPath();
        String url = requestUri.substring(contextPath.length());

        try {
            HttpSession httpSession = httpServletRequest.getSession();
            User user = (User) httpSession.getAttribute("currentUser");
            //httpSession.setMaxInactiveInterval(10);

            for (String urlSet : urlSets) {
                if (url.contains(urlSet)) {
                    return true;
                }
            }
            if (url.endsWith("/")) {
                return true;
            } else if (user != null) {
                return true;
            } else {
                httpServletRequest.getRequestDispatcher("/login")
                        .forward(httpServletRequest, httpServletResponse);
                logger.info("preHandle() intercepted");
                return false;
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
