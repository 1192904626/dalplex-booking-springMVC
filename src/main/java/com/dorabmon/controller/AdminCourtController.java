package com.dorabmon.controller;

import com.dorabmon.model.Court;
import com.dorabmon.service.court.CourtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/court")
public class AdminCourtController {

    @Autowired
    private CourtService courtService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView courtlist (HttpServletRequest httpServletRequest) {
        ModelAndView modelAndView = getCourtListModelAndView();
        return modelAndView;
    }

    private ModelAndView getCourtListModelAndView() {
        ModelAndView modelAndView = new ModelAndView("add_court");
        List<Court> courtList = courtService.FindAll();
        modelAndView.addObject("courtList", courtList);
        return modelAndView;
    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public void addCourt(@ModelAttribute Court court, HttpServletRequest httpServletRequest,
                                 HttpServletResponse httpServletResponse){

        courtService.Insert(court);

        sendRedirectToCourtList(httpServletResponse);

    }

    @RequestMapping(value = "/{courtid}", method = RequestMethod.GET)
    @ResponseBody
    public String courtdelete (@PathVariable("courtid") String courtid, HttpServletRequest httpServletRequest) {
        try{
            courtService.Delete(courtid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }

    @RequestMapping(value = "admin/{courtid}", method = RequestMethod.GET)
    @ResponseBody
    public Court getCourt(@PathVariable("courtid") int courtid,
                          HttpServletRequest httpServletRequest){

        return courtService.FindById(courtid);

    }


    @RequestMapping(value = "admin/{courtid}", method = RequestMethod.POST)
    public void updateCourt(@ModelAttribute Court court, HttpServletRequest httpServletRequest,
                                    HttpServletResponse httpServletResponse){
        courtService.Update(court);

        sendRedirectToCourtList(httpServletResponse);

    }

    private void sendRedirectToCourtList(HttpServletResponse httpServletResponse) {
        try {
            httpServletResponse.sendRedirect("/court/list");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @RequestMapping(value = "admin/list", method = RequestMethod.GET)
    @ResponseBody
    public List<Court> getCourt(HttpServletRequest httpServletRequest){

        return courtService.FindAll();
    }

}
