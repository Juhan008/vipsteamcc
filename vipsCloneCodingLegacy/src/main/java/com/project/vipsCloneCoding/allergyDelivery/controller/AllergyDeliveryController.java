package com.project.vipsCloneCoding.allergyDelivery.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.vipsCloneCoding.allergyDelivery.dao.AllergyDeliveryDao;
import com.project.vipsCloneCoding.allergyDelivery.service.AllergyDeliveryService;


@Controller
public class AllergyDeliveryController {
  @Autowired
  private AllergyDeliveryService allergyDeliveryService;
  @Autowired
  AllergyDeliveryDao allergyDeliveryDao;

  @RequestMapping(value = "/allergyDelivery", method = RequestMethod.GET)
  public String allergyDelivery(HttpSession session) {
    try {
      session.setAttribute("division01", allergyDeliveryDao.getAllMenu01("PASTA RICE", "난류"));
      session.setAttribute("division02", allergyDeliveryDao.getAllMenu01("PIZZA", "난류"));
      session.setAttribute("division03", allergyDeliveryDao.getAllMenu01("SALAD MEAL", "난류"));
      session.setAttribute("division04", allergyDeliveryDao.getAllMenu01("SET", "난류"));
      session.setAttribute("division05", allergyDeliveryDao.getAllMenu01("SIDE", "난류"));
      session.setAttribute("division06", allergyDeliveryDao.getAllMenu01("SINGLE PLATTER", "난류"));
      session.setAttribute("division07", allergyDeliveryDao.getAllMenu01("STEAK GRILL", "난류"));

    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }


    session.setAttribute("allergyDeliveryService", allergyDeliveryService);
    return "vipsCloneCoding/allergyDelivery";
  }

  @RequestMapping(value = "/allergyDelivery02", method = RequestMethod.GET)
  public String allergyDelivery02(HttpSession session) {
    try {
      session.setAttribute("division01", allergyDeliveryDao.getAllMenu01("PASTA RICE", "우유"));
      session.setAttribute("division02", allergyDeliveryDao.getAllMenu01("PIZZA", "우유"));
      session.setAttribute("division03", allergyDeliveryDao.getAllMenu01("SALAD MEAL", "우유"));
      session.setAttribute("division04", allergyDeliveryDao.getAllMenu01("SET", "우유"));
      session.setAttribute("division05", allergyDeliveryDao.getAllMenu01("SIDE", "우유"));
      session.setAttribute("division06", allergyDeliveryDao.getAllMenu01("SINGLE PLATTER", "우유"));
      session.setAttribute("division07", allergyDeliveryDao.getAllMenu01("STEAK GRILL", "우유"));

    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }


    session.setAttribute("allergyDeliveryService", allergyDeliveryService);
    return "vipsCloneCoding/allergyDelivery02";
  }
}
