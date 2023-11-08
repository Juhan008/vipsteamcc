package com.project.vipsCloneCoding.imageUpload.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.project.vipsCloneCoding.imageUpload.service.ImageUploadService;

@Controller
public class ImageUploadController {
  @Autowired
  private ImageUploadService imageUploadService;

  @RequestMapping(value = "/addCard", method = RequestMethod.POST)
  public String uploadImage(@RequestParam("image") MultipartFile image,
      @RequestParam("image_name") String imageName,
      @RequestParam("description1") String description1,
      @RequestParam("description2") String description2,
      @RequestParam("description3") String description3,
      @RequestParam("description4") String description4,
      @RequestParam("description5") String description5,
      @RequestParam("description6") String description6) {

    imageUploadService.saveImage(image, imageName, description1, description2, description3,
        description4, description5, description6);
    return "vipsCloneCoding/addCard";
  }

  @RequestMapping(value = "/deleteimage/{id}", method = RequestMethod.GET)
  public String deleteImage(@PathVariable("id") Integer id) {
    imageUploadService.deleteImage(id);
    return "vipsCloneCoding/deleteimage";
  }
}
