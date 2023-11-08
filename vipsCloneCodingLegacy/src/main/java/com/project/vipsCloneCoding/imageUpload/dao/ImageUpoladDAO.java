package com.project.vipsCloneCoding.imageUpload.dao;

import com.project.vipsCloneCoding.imageUpload.domain.ImageUploadVO;

public interface ImageUpoladDAO {
  void saveImage(ImageUploadVO image);

  ImageUploadVO getImageById(int id);

  void deleteImage(int id);
}
