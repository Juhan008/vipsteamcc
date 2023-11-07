package com.project.vipsCloneCoding.reservation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.vipsCloneCoding.HomeController;

@Controller
public class ReservationController {

  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

  @RequestMapping(value = "/store/reservationAdd", method = RequestMethod.GET)
  public String reservationAdd() {
    return "redirect:/store/storeFirstBirthdayQ";
  }

  @RequestMapping(value = "/store/storeFirstBirthdayQ", method = RequestMethod.GET)
  public String storeFirstBirthdayQ() {

    return "vipsCloneCoding/store/storeFirstBirthdayQ";
  }
}
