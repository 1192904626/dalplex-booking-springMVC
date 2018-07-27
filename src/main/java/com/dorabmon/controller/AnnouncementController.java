package com.dorabmon.controller;

import com.dorabmon.model.Annoucement;
import com.dorabmon.service.bulletin.AnnouncementService;
import com.dorabmon.util.ResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/announcement")
public class AnnouncementController {

    @Autowired
    private AnnouncementService announcementServiceImpl;

    @RequestMapping(value = "/homePageList/{offset}", method = RequestMethod.GET)
    @ResponseBody
    public List<Annoucement> loadAnnouncement(HttpServletRequest hsq, @PathVariable("offset") int offset) {

        List<Annoucement> annoucementList = announcementServiceImpl.listAnouncementByPages(offset, 5);
        return annoucementList;

    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView LoadTraining(HttpServletRequest hsq) {
        ModelAndView modelAndView = getAnnouncementListModelAndView();
        return modelAndView;
    }

    private ModelAndView getAnnouncementListModelAndView() {
        ModelAndView modelAndView = new ModelAndView("announcement");
        List<Annoucement> annoucementList = announcementServiceImpl.listAnouncementByPages(0, -1);
        modelAndView.addObject("announcementList", annoucementList);
        return modelAndView;
    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public void addAnnouncement(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                Annoucement annoucement) {

        announcementServiceImpl.Insert(annoucement);

        sendRedirectToAnnouncementList(httpServletResponse);

    }


    @RequestMapping(value = "admin/{announcementid}", method = RequestMethod.POST)
    public void updateCourt(@ModelAttribute Annoucement annoucement, HttpServletRequest httpServletRequest,
                            HttpServletResponse httpServletResponse) {
        announcementServiceImpl.Update(annoucement);

        sendRedirectToAnnouncementList(httpServletResponse);

    }

    private void sendRedirectToAnnouncementList(HttpServletResponse httpServletResponse) {
        try {
            httpServletResponse.sendRedirect("/announcement/list");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "admin/{announcementid}", method = RequestMethod.GET)
    @ResponseBody
    public Annoucement getAnnouncementJson(@PathVariable("announcementid") int announcementid,
                                           HttpServletRequest httpServletRequest) {

        return announcementServiceImpl.FindAnouncementById(announcementid);

    }


    @ResponseBody
    @RequestMapping(value = "/{announcementid}", method = RequestMethod.DELETE)
    public ResultResponse courtdelete(@PathVariable("announcementid") String announcementid, HttpServletRequest httpServletRequest) {
        boolean result = announcementServiceImpl.deleteAnnoucementById(announcementid);

        if (result) {
            return new ResultResponse(true);
        } else {
            return new ResultResponse(false, "Delete Announcement Failure");
        }
    }
}
