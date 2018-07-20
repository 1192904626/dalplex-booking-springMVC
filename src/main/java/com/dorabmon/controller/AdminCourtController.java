package com.dorabmon.controller;

import com.dorabmon.model.Court;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/court")
public class AdminCourtController {

    @Autowired
    private CourtService courtService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView courtlist (HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = new ModelAndView("add_court");
        List<Court> courtList = courtService.FindAll();
        modelAndView.addObject("courtList", courtList);
        return modelAndView;
    }
    @RequestMapping(value = "/{courtid}", method = RequestMethod.GET)
    public ModelAndView courtdelete (@PathVariable("courtid") String courtid, HttpServletRequest httpServletRequest) {
        courtService.Delete(courtid);
        // return
        ModelAndView modelAndView = new ModelAndView("add_court");
        return modelAndView;
    }


    



}
