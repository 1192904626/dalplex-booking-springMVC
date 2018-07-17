package com.dorabmon.controller;

import com.dorabmon.model.Annoucement;
import com.dorabmon.service.bulletin.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AnnouncementController {

    @Autowired
    private AnnouncementService announcementServiceImpl;

    @RequestMapping(value = "/announcement", method = RequestMethod.GET)
    public ModelAndView LoadTraining(HttpServletRequest hsq){
        ModelAndView modelAndView = new ModelAndView("announcement");
        List<Annoucement> annoucementList = announcementServiceImpl.listAnouncementByPages(0, 5);
        modelAndView.addObject("announcementList", annoucementList);
        return modelAndView;
    }
}
