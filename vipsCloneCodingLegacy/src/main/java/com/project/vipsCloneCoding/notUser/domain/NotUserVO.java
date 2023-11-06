package com.project.vipsCloneCoding.notUser.domain;

import java.util.Date;

public class NotUserVO {
  private int id;
  private String name;
  private String phoneNumber;
  private String address;
  private Date createdAt;

  public NotUserVO(int id, String name, String phoneNumber, String address, Date createdAt) {
    this.id = id;
    this.name = name;
    this.phoneNumber = phoneNumber;
    this.address = address;
    this.createdAt = createdAt;
  }


  public int getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public String getAddress() {
    return address;
  }

  public Date getCreatedAt() {
    return createdAt;
  }


}
