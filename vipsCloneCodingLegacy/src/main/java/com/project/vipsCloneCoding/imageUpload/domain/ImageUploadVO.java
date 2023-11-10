package com.project.vipsCloneCoding.imageUpload.domain;

public class ImageUploadVO {

  private int imageId;
  private String imageName;
  private String imagePath;
  private String description1;
  private String description2;
  private String description3;
  private String description4;
  private String description5;
  private String description6;

  public ImageUploadVO(int imageId, String imageName, String imagePath, String description1,
      String description2, String description3, String description4, String description5,
      String description6) {
    this.imageId = imageId;
    this.imageName = imageName;
    this.imagePath = imagePath;
    this.description1 = description1;
    this.description2 = description2;
    this.description3 = description3;
    this.description4 = description4;
    this.description5 = description5;
    this.description6 = description6;

  }

  public int getImageId() {
    return imageId;
  }

  public String getImageName() {
    return imageName;
  }

  public String getImagePath() {
    return imagePath;
  }

  public String getDescription1() {
    return description1;
  }

  public String getDescription2() {
    return description2;
  }

  public String getDescription3() {
    return description3;
  }

  public String getDescription4() {
    return description4;
  }

  public String getDescription5() {
    return description5;
  }

  public String getDescription6() {
    return description6;
  }
}

