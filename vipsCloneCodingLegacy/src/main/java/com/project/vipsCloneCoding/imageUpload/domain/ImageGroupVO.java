package com.project.vipsCloneCoding.imageUpload.domain;

public class ImageGroupVO {
  private int groupId;
  private String groupTitle;

  public ImageGroupVO(int groupId, String groupTitle) {
    this.groupId = groupId;
    this.groupTitle = groupTitle;
  }

  public int getGroupId() {
    return groupId;
  }

  public String getGroupTitle() {
    return groupTitle;
  }
}
