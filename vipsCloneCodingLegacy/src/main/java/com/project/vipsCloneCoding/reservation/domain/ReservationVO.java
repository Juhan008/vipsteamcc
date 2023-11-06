package com.project.vipsCloneCoding.reservation.domain;

import java.util.Date;

public class ReservationVO {

  private int id;
  private String name;
  private String phoneNumber;
  private String title;
  private String reservationContents;
  private String managerContents;
  private String address;
  private Date createdAt;
  private String isCheck;
  private String isDelete;

  public ReservationVO(int id, String name, String phoneNumber, String title,
      String reservationContents, String managerContents, String address, Date createdAt,
      String isCheck, String isDelete) {
    this.id = id;
    this.name = name;
    this.phoneNumber = phoneNumber;
    this.title = title;
    this.reservationContents = reservationContents;
    this.managerContents = managerContents;
    this.address = address;
    this.createdAt = createdAt;
    this.isCheck = isCheck;
    this.isDelete = isDelete;
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

  public String getTitle() {
    return title;
  }

  public String getReservationContents() {
    return reservationContents;
  }

  public String getManagerContent() {
    return managerContents;
  };


  public String getAddress() {
    return address;
  }

  public Date getCreatedAt() {
    return createdAt;
  }

  public String getIsCheck() {
    return isCheck;
  }

  public String getIsDelete() {
    return isDelete;
  }



}
