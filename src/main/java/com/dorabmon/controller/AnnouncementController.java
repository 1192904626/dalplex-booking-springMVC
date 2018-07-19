package com.dorabmon.controller;

import com.dorabmon.model.Annoucement;
import com.dorabmon.service.bulletin.AnnouncementService;
import com.dorabmon.util.ResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
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
        List<Annoucement> annoucementList = announcementServiceImpl.listAnouncementByPages(0, -1);
        modelAndView.addObject("announcementList", annoucementList);
        return modelAndView;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public void courtdelete ( HttpServletRequest httpServletRequest) {
        System.out.println("sdfsdfsdf");
    }

    @ResponseBody
    @RequestMapping(value = "/{announcementid}", method = RequestMethod.DELETE)
    public ResultResponse courtdelete (@PathVariable("announcementid") String announcementid, HttpServletRequest httpServletRequest) {
        boolean result = announcementServiceImpl.deleteAnnoucementById(announcementid);

        if(result){
            return new ResultResponse(true);
        }
        else{
            return new ResultResponse(false, "Delete Announcement Failure");
        }
    }
}
