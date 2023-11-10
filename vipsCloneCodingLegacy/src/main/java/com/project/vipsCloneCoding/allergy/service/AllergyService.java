package com.project.vipsCloneCoding.allergy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.vipsCloneCoding.allergy.dao.AllergyDao;

@Service
public class AllergyService {
  @Autowired
  private AllergyDao allergyDao;

  public String getDivision01() {

    try {
      return allergyDao.getId1("1").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision02() {

    try {
      return allergyDao.getId1("4").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision03() {

    try {
      return allergyDao.getId1("12").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision04() {

    try {
      return allergyDao.getId1("13").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision05() {

    try {
      return allergyDao.getId1("16").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision06() {

    try {
      return allergyDao.getId1("17").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision07() {

    try {
      return allergyDao.getId1("23").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision08() {

    try {
      return allergyDao.getId1("27").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision09() {

    try {
      return allergyDao.getId1("36").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision10() {

    try {
      return allergyDao.getId1("43").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }


  public String getDivision11() {

    try {
      return allergyDao.getId1("46").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision12() {

    try {
      return allergyDao.getId1("48").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision13() {

    try {
      return allergyDao.getId1("58").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision14() {

    try {
      return allergyDao.getId1("60").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  public String getDivision15() {

    try {
      return allergyDao.getId1("62").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  // BEVERAGE
  public String getDivision16() {

    try {
      return allergyDao.getId1("69").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }

  // RICE SALAD
  public String getDivision17() {

    try {
      return allergyDao.getId1("266").getDivision();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }



}
