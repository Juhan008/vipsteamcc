package com.project.vipsCloneCoding.reservation.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.project.vipsCloneCoding.HomeController;
import com.project.vipsCloneCoding.reservation.dao.ReservationDAO;
import com.project.vipsCloneCoding.reservation.domain.ReservationVO;
import com.project.vipsCloneCoding.reservation.service.ReservationService;

@Controller
public class ReservationController {

  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
  @Autowired
  ReservationDAO reservationDAO;
  @Autowired
  ReservationService reservationService;

  @RequestMapping(value = "/store/reservationAdd", method = RequestMethod.GET)
  public String reservationAdd(@RequestParam Map<String, String> map) {
    Date tempDate = null;
    Timestamp tempTimestamp = null;
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
    try {

      tempDate = formatter.parse(map.get("time"));
      tempTimestamp = new Timestamp(tempDate.getTime());

    } catch (ParseException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    ReservationVO reservation = new ReservationVO(map.get("name"), map.get("phone_number"),
        map.get("user_id"), tempTimestamp, Integer.valueOf(map.get("how_many_people")),
        map.get("reservation_contents"), map.get("location"));
    reservationDAO.add(reservation);
    return "redirect:/store/storeFirstBirthdayQ";
  }

  @RequestMapping(value = "/store/storeFirstBirthdayQ", method = RequestMethod.GET)
  public String storeFirstBirthdayQ() {

    return "vipsCloneCoding/store/storeFirstBirthdayQ";
  }

  @RequestMapping(value = "/store/storeCheckReservation", method = RequestMethod.GET)
  public String storeCheckReservation(HttpSession sessoin) {
    try {
      sessoin.setAttribute("reservationTotal",
          reservationDAO.getAllReservation(sessoin.getAttribute("userId").toString()));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }

    return "vipsCloneCoding/store/storeCheckReservation";
  }

  @RequestMapping(value = "/store/storePrintReservation", method = RequestMethod.POST)
  public String storePrintReservation(@RequestParam Map<String, String> map, HttpSession sessoin) {
    try {
      sessoin.setAttribute("currentReservation",
          reservationDAO.get(Integer.valueOf(map.get("reservation_id"))));
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "vipsCloneCoding/store/storePrintReservation";
  }

  @RequestMapping(value = "/store/storeReservationAdmin", method = RequestMethod.GET)
  public String storeReservationAdmin(@RequestParam Map<String, String> map, HttpSession sessoin) {
    int tempControll = 1;
    if (map.get("controll") != null) {
      tempControll = Integer.valueOf(map.get("controll"));
    }
    if (sessoin.getAttribute("member").equals("admin")
        || sessoin.getAttribute("member").equals("sub_admin")) {

      try {
        sessoin.setAttribute("reservationSize", reservationService.getAllControllSize());
        sessoin.setAttribute("reservationTable", reservationDAO.getLastTen(tempControll));
      } catch (Exception e) {
        e.printStackTrace();
      }
    } else if (sessoin.getAttribute("member").equals("low_admin")) {
      try {
        sessoin.setAttribute("reservationSize", reservationService
            .getLocationControllSize(sessoin.getAttribute("location").toString()));
        sessoin.setAttribute("reservationTable", reservationDAO.getLocationReservationLastTen(
            sessoin.getAttribute("location").toString(), tempControll));
      } catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
    return "vipsCloneCoding/store/storeReservationAdmin";
  }

  @RequestMapping(value = "/store/storePrintAdmin", method = RequestMethod.GET)
  public String storePrintAdmin(@RequestParam Map<String, String> map, HttpSession sessoin) {
    try {
      sessoin.setAttribute("currentReservation",
          reservationDAO.get(Integer.valueOf(map.get("id"))));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return "vipsCloneCoding/store/storePrintAdmin";
  }

  @RequestMapping(value = "/store/storePrintAdmin", method = RequestMethod.POST)
  public String storePrintAdminPost(@RequestParam Map<String, String> map, HttpSession sessoin) {

    reservationDAO.updateAnswer(Integer.valueOf(map.get("id")), map.get("manager_contents"));
    try {
      sessoin.setAttribute("currentReservation",
          reservationDAO.get(Integer.valueOf(map.get("id"))));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }

    return "vipsCloneCoding/store/storePrintAdmin";
  }

}
