package com.project.vipsCloneCoding.allergy.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.vipsCloneCoding.allergy.service.AllergyService;

@Controller
public class AllergyController {
  @Autowired
  private AllergyService allergyService;

  @RequestMapping(value = "/allergy", method = RequestMethod.GET)
  public String allergy(HttpSession session) {

    session.setAttribute("allergyService", allergyService);
    return "vipsCloneCoding/allergy";
  }


}
