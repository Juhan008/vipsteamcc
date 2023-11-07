package com.project.vipsCloneCoding.newsBoard.domain;

import java.util.Date;

public class NewsBoardVO {
  private int id;
  private String userId;
  private String title;
  private String contents;
  private Date createdAt;
  private int view = 0;
  private String isDelete = "false";

  public NewsBoardVO(int id, String userId, String title, String contents, Date createdAt,
      int view) {
    this.id = id;
    this.userId = userId;
    this.title = title;
    this.contents = contents;
    this.createdAt = createdAt;
    this.view = view;
  }

  /**
   * 입력용
   **/
  public NewsBoardVO(String userId, String title, String contents) {
    this.userId = userId;
    this.title = title;
    this.contents = contents;
  }

  public NewsBoardVO(String title, Date createdAt, int view) {
    this.title = title;
    this.createdAt = createdAt;
    this.view = view;
  }



  public int getId() {
    return id;
  }

  public String getUserId() {
    return userId;
  }

  public String getTitle() {
    return title;
  }

  public String getContents() {
    return contents;
  }

  public Date getCreatedAt() {
    return createdAt;
  }

  public int getView() {
    return view;
  }

  public String getIsDelete() {
    return isDelete;
  }

}
