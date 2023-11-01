package main.java.com.user;

import java.util.Date;

public class UserVO {
  private int id;
  private String name;
  private String phoneNumber;
  private String userId;
  private String pw;
  private String address;
  private String birth;
  private Date createdAt;
  private String coupon;
  private String member;

  public UserVO(int id, String name, String phoneNumber, String userId, String pw, String address,
      String birth, Date createdAt, String coupon, String member) {
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

  public String getBirth() {
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

}

