package com.dorabmon.controller;

import com.dorabmon.model.Court;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public ModelAndView addCourt(@ModelAttribute Court court, HttpServletRequest httpServletRequest){
        courtService.Insert(court);
        return courtlist(httpServletRequest);
    }

    @RequestMapping(value = "/{courtid}", method = RequestMethod.GET)
    public ModelAndView courtdelete (@PathVariable("courtid") String courtid, HttpServletRequest httpServletRequest) {
        courtService.Delete(courtid);
        // return
        ModelAndView modelAndView = new ModelAndView("add_court");
        return modelAndView;
    }


    @RequestMapping(value = "admin/{courtid}", method = RequestMethod.GET)
    @ResponseBody
    public Court getCourt(@PathVariable("courtid") int courtid,
                          HttpServletRequest httpServletRequest){

        return courtService.FindById(courtid);

    }


    @RequestMapping(value = "admin/{courtid}", method = RequestMethod.POST)
    public ModelAndView updateCourt(@ModelAttribute Court court, HttpServletRequest httpServletRequest){
        courtService.Update(court);
        return courtlist(httpServletRequest);
    }


    @RequestMapping(value = "admin/list", method = RequestMethod.GET)
    @ResponseBody
    public List<Court> getCourt(HttpServletRequest httpServletRequest){

        return courtService.FindAll();
    }

}
