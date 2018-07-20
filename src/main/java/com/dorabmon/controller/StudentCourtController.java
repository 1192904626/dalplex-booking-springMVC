package com.dorabmon.controller;

import com.dorabmon.model.Court;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/studentCourt")
public class StudentCourtController {

    @Autowired
    private CourtService courtService;

    @RequestMapping(value = "/pages/{court_type}", method = RequestMethod.GET)
    public ModelAndView viewCourtPage(@PathVariable("court_type") String court_type, HttpServletRequest httpServletRequest) {

        ModelAndView modelAndView = new ModelAndView("court");

        modelAndView.addObject("court_type", court_type);
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/{court_type}", method = RequestMethod.GET)
    public List<Court> listAllCourts(@PathVariable("court_type") String court_type, HttpServletRequest httpServletRequest) {

        List<Court> courtList = null;
        courtList = courtService.listCourtsByCourtType(court_type);
        return courtList;
    }

}
