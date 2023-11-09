package com.project.vipsCloneCoding.allergy.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.vipsCloneCoding.allergy.dao.AllergyDao;
import com.project.vipsCloneCoding.allergy.service.AllergyService;

@Controller
public class AllergyController {
  @Autowired
  private AllergyService allergyService;
  @Autowired
  AllergyDao allergyDao;

  @RequestMapping(value = "/allergy", method = RequestMethod.GET)
  public String allergy(HttpSession session) {
    try {
      session.setAttribute("division01", allergyDao.getAllMenu01("BAKERY", "난류"));
      session.setAttribute("division02", allergyDao.getAllMenu01("DESSERT", "난류"));
      session.setAttribute("division03", allergyDao.getAllMenu01("DIY", "난류"));
      session.setAttribute("division04", allergyDao.getAllMenu01("DRESSING", "난류"));
      session.setAttribute("division05", allergyDao.getAllMenu01("FRUIT", "난류"));
      session.setAttribute("division06", allergyDao.getAllMenu01("GARDEN SALAD", "난류"));
      session.setAttribute("division07", allergyDao.getAllMenu01("HOT APPETIZER", "난류"));
      session.setAttribute("division08", allergyDao.getAllMenu01("HOT PLATE", "난류"));
      session.setAttribute("division09", allergyDao.getAllMenu01("MAIN MENU", "난류"));
      session.setAttribute("division10", allergyDao.getAllMenu01("MIXED SALAD", "난류"));
      session.setAttribute("division11", allergyDao.getAllMenu01("NOODLES", "난류"));
      session.setAttribute("division12", allergyDao.getAllMenu01("PIZZA PASTA", "난류"));
      session.setAttribute("division13", allergyDao.getAllMenu01("SEAFOOD", "난류"));
      session.setAttribute("division14", allergyDao.getAllMenu01("SIDE", "난류"));
      session.setAttribute("division15", allergyDao.getAllMenu01("SOUP", "난류"));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }


    session.setAttribute("allergyService", allergyService);
    return "vipsCloneCoding/allergy";
  }

  @RequestMapping(value = "/allergy02", method = RequestMethod.GET)
  public String allergy02(HttpSession session) {
    try {
      session.setAttribute("division01", allergyDao.getAllMenu01("BAKERY", "우유"));
      session.setAttribute("division02", allergyDao.getAllMenu01("BEVERAGE", "우유"));
      session.setAttribute("division03", allergyDao.getAllMenu01("DESSERT", "우유"));
      session.setAttribute("division04", allergyDao.getAllMenu01("DIY", "우유"));
      session.setAttribute("division05", allergyDao.getAllMenu01("GARDEN SALAD", "우유"));
      session.setAttribute("division06", allergyDao.getAllMenu01("HOT APPETIZER", "우유"));
      session.setAttribute("division07", allergyDao.getAllMenu01("HOT PLATE", "우유"));
      session.setAttribute("division08", allergyDao.getAllMenu01("MAIN MENU", "우유"));
      session.setAttribute("division09", allergyDao.getAllMenu01("MIXED SALAD", "우유"));
      session.setAttribute("division10", allergyDao.getAllMenu01("PIZZA PASTA", "우유"));
      session.setAttribute("division11", allergyDao.getAllMenu01("SEAFOOD", "우유"));
      session.setAttribute("division12", allergyDao.getAllMenu01("SIDE", "우유"));
      session.setAttribute("division13", allergyDao.getAllMenu01("SOUP", "우유"));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }


    session.setAttribute("allergyService", allergyService);
    return "vipsCloneCoding/allergy02";
  }

  @RequestMapping(value = "/allergy03", method = RequestMethod.GET)
  public String allergy03(HttpSession session) {
    try {
      session.setAttribute("division01", allergyDao.getAllMenu01("HOT PLATE", "메밀"));
      session.setAttribute("division02", allergyDao.getAllMenu01("NOODLES", "메밀"));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }


    session.setAttribute("allergyService", allergyService);
    return "vipsCloneCoding/allergy03";
  }

  @RequestMapping(value = "/allergy04", method = RequestMethod.GET)
  public String allergy04(HttpSession session) {
    try {
      session.setAttribute("division01", allergyDao.getAllMenu01("DESSERT", "땅콩"));
      session.setAttribute("division02", allergyDao.getAllMenu01("HOT PLATE", "땅콩"));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }


    session.setAttribute("allergyService", allergyService);
    return "vipsCloneCoding/allergy04";
  }

  @RequestMapping(value = "/allergy05", method = RequestMethod.GET)
  public String allergy05(HttpSession session) {
    try {
      session.setAttribute("division01", allergyDao.getAllMenu01("BAKERY", "대두"));
      session.setAttribute("division02", allergyDao.getAllMenu01("BEVERAGE", "대두"));
      session.setAttribute("division03", allergyDao.getAllMenu01("DESSERT", "대두"));
      session.setAttribute("division04", allergyDao.getAllMenu01("DIY", "대두"));
      session.setAttribute("division05", allergyDao.getAllMenu01("DRESSING", "대두"));
      session.setAttribute("division06", allergyDao.getAllMenu01("FRUIT", "대두"));
      session.setAttribute("division07", allergyDao.getAllMenu01("GARDEN SALAD", "대두"));
      session.setAttribute("division08", allergyDao.getAllMenu01("HOT APPETIZER", "대두"));
      session.setAttribute("division09", allergyDao.getAllMenu01("HOT PLATE", "대두"));
      session.setAttribute("division10", allergyDao.getAllMenu01("MAIN MENU", "대두"));
      session.setAttribute("division11", allergyDao.getAllMenu01("MIXED SALAD", "대두"));
      session.setAttribute("division12", allergyDao.getAllMenu01("NOODLES", "대두"));
      session.setAttribute("division13", allergyDao.getAllMenu01("PIZZA PASTA", "대두"));
      session.setAttribute("division14", allergyDao.getAllMenu01("RICE SALAD", "대두"));
      session.setAttribute("division15", allergyDao.getAllMenu01("SEAFOOD", "대두"));
      session.setAttribute("division16", allergyDao.getAllMenu01("SIDE", "대두"));
      session.setAttribute("division17", allergyDao.getAllMenu01("SOUP", "대두"));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }


    session.setAttribute("allergyService", allergyService);
    return "vipsCloneCoding/allergy05";
  }


}
