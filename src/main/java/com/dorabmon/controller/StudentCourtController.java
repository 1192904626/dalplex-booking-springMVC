package com.dorabmon.controller;

import com.dorabmon.model.Court;
import com.dorabmon.model.CourtBooking;
import com.dorabmon.model.User;
import com.dorabmon.service.court.CourtService;
import com.dorabmon.util.ConstantsUitls;
import com.dorabmon.util.RequestJsonParam;
import com.dorabmon.util.ResultResponse;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping(value = "/studentCourt")
public class StudentCourtController {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(StudentCourtController.class);

    @Autowired
    private CourtService courtService;

    @RequestMapping(value = "/pages/{court_type}", method = RequestMethod.GET)
    public ModelAndView viewCourtPage(@PathVariable("court_type") String court_type, HttpServletRequest httpServletRequest) {

        User user = (User) httpServletRequest.getSession().getAttribute("currentUser");
        if(user == null){

            ModelAndView modelAndView = new ModelAndView("login");
            return modelAndView;
        }

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

    @RequestMapping(value = "/listCourts", method = RequestMethod.POST)
    @ResponseBody
    public List<Court> listCourtsByTypeAndDate(
                              @RequestBody RequestJsonParam requestJsonParam)
    {
        String date = requestJsonParam.getDate();
        String court_type = requestJsonParam.getCourt_type();
        if(StringUtils.isEmpty(date) || StringUtils.isEmpty(court_type) )
        {
            return null;
        }

        List<Court> courtList = null;
        courtList = courtService.listCourtsByCourtTypeAndDate(court_type, date);
        return courtList;
    }

    @RequestMapping(value = "/showValidPeriods", method = RequestMethod.POST)
    @ResponseBody
    public List<String> showValidPeriodsByCourtIdandDate(
            @RequestBody RequestJsonParam requestJsonParam)
    {
        String date = requestJsonParam.getDate();
        Integer court_id = requestJsonParam.getCourt_id();

        if(StringUtils.isEmpty(date) || court_id == null )
        {
            return null;
        }

        return courtService.showValidPeriodsByCourtIdAndDate(court_id, date);

    }

    @RequestMapping(value = "/courtBooking", method = RequestMethod.POST)
    @ResponseBody
    public ResultResponse bookCourt(HttpServletRequest httpServletRequest,
            @RequestBody RequestJsonParam requestJsonParam)
    {
        Integer court_id = requestJsonParam.getCourt_id();
        String payload = requestJsonParam.getPayload();
        String dateStr = requestJsonParam.getDate();
        if(StringUtils.isEmpty(payload) || court_id == null || StringUtils.isEmpty(dateStr)){
            logger.error("Error bookCourt wrong parameters");
            return new ResultResponse(false, "Error bookCourt wrong parameters");
        }

        User user = (User) httpServletRequest.getSession().getAttribute("currentUser");
        if(user == null){
            logger.error("Error Session Time Out!!!");
            return new ResultResponse(false, "Session Time Out");
        }

        int hourOfday = java.util.Arrays.asList(ConstantsUitls.arrayAll12Periods).indexOf(payload);

        if(hourOfday == -1)
        {
            logger.error("Error bookCourt wrong date period");
            return new ResultResponse(false, "Error bookCourt wrong date period");
        }

        boolean result = courtService.createCourtBooking(user.getStudent_id(), court_id, hourOfday,  dateStr);
        return new ResultResponse(result);

    }

    @RequestMapping(value = "/courtBooking/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public ResultResponse deleteBookCourtById(@PathVariable("id") String id, HttpServletRequest httpServletRequest)
    {
        boolean result = courtService.deleteBookingCourtById(id);
        return new ResultResponse(result);

    }

}
