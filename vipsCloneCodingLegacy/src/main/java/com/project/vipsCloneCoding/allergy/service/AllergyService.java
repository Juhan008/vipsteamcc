package com.project.vipsCloneCoding.allergy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.allergy.dao.AllergyDao;

@Service
public class AllergyService {
  @Autowired
  private AllergyDao allergyDao;

  public String getDivision() {

    try {
      return allergyDao.getId1("1").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getMenu() {

    try {
      return allergyDao.getDivision01("난류", "BAKERY").getMenu();

    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getInfo() {

    try {
      return allergyDao.getId2("1").getInfo();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }



}
