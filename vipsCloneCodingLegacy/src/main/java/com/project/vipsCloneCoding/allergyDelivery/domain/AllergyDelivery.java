package com.project.vipsCloneCoding.allergyDelivery.domain;

public class AllergyDelivery {
  private String division;
  private String menu;
  private String info;
  private String material;

  public AllergyDelivery(String division, String menu, String info, String material) {
    this.division = division;
    this.menu = menu;
    this.info = info;
    this.material = material;
  }

  public String getDivision() {
    return division;
  }

  public String getMenu() {
    return menu;
  }

  public String getInfo() {
    return info;
  }

  public String getMaterial() {
    return material;
  }
}


