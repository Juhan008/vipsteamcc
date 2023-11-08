package com.project.vipsCloneCoding.reservation.domain;

import java.util.Date;

public class ReservationVO {

  private int id;
  private String name;
  private String phoneNumber;
  private String userId;
  private Date time;
  private int howManyPeople;
  private String reservationContents;
  private String managerContents;
  private String location;
  private Date createdAt;
  private String isCheck;
  private String isDelete;

  public ReservationVO(int id, String name, String phoneNumber, String userId, Date time,
      int howManyPeople, String reservationContents, String managerContents, String location,
      Date createdAt, String isCheck, String isDelete) {
    this.id = id;
    this.name = name;
    this.phoneNumber = phoneNumber;
    this.userId = userId;
    this.time = time;
    this.howManyPeople = howManyPeople;
    this.reservationContents = reservationContents;
    this.managerContents = managerContents;
    this.location = location;
    this.createdAt = createdAt;
    this.isCheck = isCheck;
    this.isDelete = isDelete;
  }

  /**
   * 예약 받는 용도
   **/
  public ReservationVO(String name, String phoneNumber, String userId, Date time, int howManyPeople,
      String reservationContents, String location) {
    this.name = name;
    this.phoneNumber = phoneNumber;
    this.userId = userId;
    this.time = time;
    this.howManyPeople = howManyPeople;
    this.reservationContents = reservationContents;
    this.location = location;
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

  public String getUserId() {
    return userId;
  }

  public Date getTime() {
    return time;
  }

  public int getHowManyPeople() {
    return howManyPeople;
  }

  public String getReservationContents() {
    return reservationContents;
  }

  public String getManagerContents() {
    return managerContents;
  };


  public String getLocation() {
    return location;
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
