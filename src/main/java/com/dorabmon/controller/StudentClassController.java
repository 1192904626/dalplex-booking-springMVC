package com.dorabmon.controller;

import com.dorabmon.model.Course;
import com.dorabmon.model.User;
import com.dorabmon.service.course.CourseService;
import com.dorabmon.service.studentCourse.StudentCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentClassController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private StudentCourseService studentCourseService;


    @RequestMapping(value = "/classes", method = RequestMethod.GET)
    public ModelAndView classList(HttpServletRequest request, HttpServletResponse response) {

        ModelAndView mav = new ModelAndView("classes");
        List<Course> comingCourseList = new ArrayList<>();
        HttpSession httpSession = request.getSession();
        if (httpSession.getAttribute("currentUser") == null) {
            mav.setViewName("homepage");
            // ModelAndView mav1 = new ModelAndView("homepage");
            try {
                response.sendRedirect("/");
            } catch (IOException e) {
                e.printStackTrace();
            }
            //  return mav;
        } else {
            User user = (User) httpSession.getAttribute("currentUser");
            mav.addObject("currentUser", user);

            // coming course, book and vanish
            comingCourseList = courseService.FindOtherCourseByStudentId(user.getStudent_id());
            mav.addObject("comingCourseList", comingCourseList);

//            coming course
//            comingCourseList = courseService.FindAll();
//            mav.addObject("comingCourseList", comingCourseList);


        }
        return mav;
    }

    @RequestMapping(value = "/student_page/{insert}", method = RequestMethod.POST)
    public ModelAndView courseinsert(@PathVariable("insert") int courseid, HttpServletRequest httpServletRequest) {

        ModelAndView mav;
        HttpSession httpSession = httpServletRequest.getSession();
        User user = (User) httpSession.getAttribute("currentUser");

        studentCourseService.Insert(user.getStudent_id(), courseid);
        int status = studentCourseService.DuplicateCheck(user.getStudent_id(), courseid);
        // return
        mav = new ModelAndView("classes");
        mav.addObject("duplicatebooking", status);
        return mav;


    }

}
