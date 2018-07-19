package com.dorabmon.controller;

import com.dorabmon.model.Annoucement;
import com.dorabmon.service.bulletin.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/announcement")
public class AnnouncementController {

    @Autowired
    private AnnouncementService announcementServiceImpl;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView LoadTraining(HttpServletRequest hsq){
        ModelAndView modelAndView = new ModelAndView("announcement");
        List<Annoucement> annoucementList = announcementServiceImpl.listAnouncementByPages(0, 5);
        modelAndView.addObject("announcementList", annoucementList);
        return modelAndView;
    }
    @RequestMapping(value = "/{announcementid}", method = RequestMethod.GET)
    public ModelAndView courtdelete (@PathVariable("announcementid") String announcementid, HttpServletRequest httpServletRequest) {
        announcementServiceImpl.Delete(announcementid);
        // return
        ModelAndView modelAndView = new ModelAndView("announcement");
        return modelAndView;
    }
}
