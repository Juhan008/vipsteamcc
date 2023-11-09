package com.project.vipsCloneCoding.user.domain;

import java.util.Date;

public class UserVO {
  private int id;
  private String name;
  private String phoneNumber;
  private String userId;
  private String pw;
  private String address;
  private Date birth;
  private Date createdAt;
  private String coupon;
  private String member;
  private String location;

  /**
   * 전체호출용
   **/
  public UserVO(int id, String name, String phoneNumber, String userId, String pw, String address,
      Date birth, Date createdAt, String coupon, String member, String location) {
    this.id = id;
    this.name = name;
    this.phoneNumber = phoneNumber;
    this.userId = userId;
    this.pw = pw;
    this.address = address;
    this.birth = birth;
    this.createdAt = createdAt;
    this.coupon = coupon;
    this.member = member;
    this.location = location;
  }

  /**
   * 가입전용
   **/
  public UserVO(String name, String phoneNumber, String userId, String pw, String address,
      Date birth) {
    this.name = name;
    this.phoneNumber = phoneNumber;
    this.userId = userId;
    this.pw = pw;
    this.address = address;
    this.birth = birth;
  }

  /**
   * 로그인용
   **/
  public UserVO(String userId, String pw) {
    this.userId = userId;
    this.pw = pw;
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

  public String getPw() {
    return pw;
  }

  public String getAddress() {

    return address;
  }

  public Date getBirth() {
    return birth;
  }

  public Date getCreatedAt() {
    return createdAt;
  }

  public String getCoupon() {
    return coupon;
  }

  public String getMember() {
    return member;
  }

  public String getLocation() {
    return location;
  }

}

