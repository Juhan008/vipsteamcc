package com.project.vipsCloneCoding.imageUpload.dao;

import java.util.List;
import com.project.vipsCloneCoding.imageUpload.domain.ImageUploadVO;

public interface ImageUpoladDAO {
  void saveImage(ImageUploadVO image);

  ImageUploadVO getImageById(int id);

  void deleteImage(int id);

  void createImageGroup(String groupTitle);

  void removeImageFromGroup(int groupId, int imageId);

  List<ImageUploadVO> listImagesByGroup(int groupId);

  void addImageToGroup(int groupId, int imageId, int orderIndex);
}
