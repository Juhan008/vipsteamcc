package com.project.vipsCloneCoding.allergy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.allergy.dao.AllergyDao;

@Service
public class AllergyService {
  @Autowired
  private AllergyDao allergyDao;

  public String getDivision(String d) {

    try {
      return allergyDao.getAllergy(d).getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getMenu(String d) {
    try {
      return allergyDao.getAllergy(d).getMenu();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getInfo(String d) {
    try {
      return allergyDao.getAllergy(d).getInfo();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getTemp() {

    try {
      // return allergyDao.getMaterial("난류", "BAKERY");
      System.out.println(allergyDao.getDivision("1").getMaterial() + "왜안나와");
      return allergyDao.getDivision("1").getDivision();



    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }



}
