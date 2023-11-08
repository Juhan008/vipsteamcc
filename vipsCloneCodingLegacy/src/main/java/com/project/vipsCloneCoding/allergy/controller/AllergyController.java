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
      session.setAttribute("material01", allergyDao.getAllMenu("BAKERY", "난류"));
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    session.setAttribute("allergyService", allergyService);
    return "vipsCloneCoding/allergy";
  }


}
