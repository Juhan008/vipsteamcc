package com.project.vipsCloneCoding.allergyDelivery.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.allergyDelivery.dao.AllergyDeliveryDao;

@Service
public class AllergyDeliveryService {
  @Autowired
  private AllergyDeliveryDao allergyDeliveryDao;

  public String getDivision01() {

    try {
      return allergyDeliveryDao.getId1("1").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision02() {

    try {
      return allergyDeliveryDao.getId1("8").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision03() {

    try {
      return allergyDeliveryDao.getId1("11").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision04() {

    try {
      return allergyDeliveryDao.getId1("14").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision05() {

    try {
      return allergyDeliveryDao.getId1("17").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision06() {

    try {
      return allergyDeliveryDao.getId1("26").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision07() {

    try {
      return allergyDeliveryDao.getId1("30").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }


}
