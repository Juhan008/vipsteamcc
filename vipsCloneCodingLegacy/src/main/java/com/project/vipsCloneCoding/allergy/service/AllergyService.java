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
      for (int i = 1; i < 6; i++) {
        if (i < 4) {
          return allergyDao.getId1("1").getDivision();
        }

        if (i >= 4) {
          return allergyDao.getId1("4").getDivision();
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getMenu() {

    try {
      for (int id = 2; id < 4; id++) {
        if (id == 2) {
          return allergyDao.getId2("2").getMenu();
        }

        if (id == 3) {
          return allergyDao.getId2("3").getMenu();
        }
      }
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
