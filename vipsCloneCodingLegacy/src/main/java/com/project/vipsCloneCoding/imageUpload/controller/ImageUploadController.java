package com.project.vipsCloneCoding.imageUpload.controller;

import java.util.List;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.project.vipsCloneCoding.imageUpload.domain.ImageGroupVO;
import com.project.vipsCloneCoding.imageUpload.domain.ImageUploadVO;
import com.project.vipsCloneCoding.imageUpload.service.ImageUploadService;

@Controller
public class ImageUploadController {
  @Autowired
  private ImageUploadService imageUploadService;

  @RequestMapping(value = "/addimage", method = RequestMethod.POST)
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
    return "vipsCloneCoding/addimage";
  }

  @RequestMapping(value = "/imageadmin", method = RequestMethod.GET)
  public String listImages(Model model) {
    List<ImageUploadVO> images = imageUploadService.listAllImages();
    model.addAttribute("images", images);
    List<ImageGroupVO> groups = imageUploadService.getAllImageGroups();
    model.addAttribute("groups", groups);
    return "vipsCloneCoding/imageadmin";
  }

  @RequestMapping(value = "/deleteimage/{id}", method = RequestMethod.POST)
  public String deleteImage(@PathVariable("id") int id, RedirectAttributes redirectAttributes) {
    try {
      imageUploadService.deleteImage(id);
      redirectAttributes.addFlashAttribute("successMessage", "이미지가 성공적으로 삭제되었습니다.");
    } catch (Exception e) {
      redirectAttributes.addFlashAttribute("errorMessage", "이미지 삭제 중 오류가 발생했습니다.");
    }
    return "redirect:/imageadmin";
  }

  @RequestMapping(value = "/imageGroups", method = RequestMethod.GET)
  public String listImageGroups(Model model) {
    List<ImageGroupVO> groups = imageUploadService.getAllImageGroups();
    List<ImageUploadVO> images = imageUploadService.listAllImages();
    model.addAttribute("images", images);
    model.addAttribute("groups", groups);
    return "vipsCloneCoding/imageGroups";
  }

  @RequestMapping(value = "/deleteGroup/{groupId}", method = RequestMethod.POST)
  public String deleteImageGroup(@PathVariable("groupId") int groupId,
      RedirectAttributes redirectAttributes) {
    imageUploadService.deleteImageGroup(groupId);
    redirectAttributes.addFlashAttribute("successMessage", "그룹이 삭제되었습니다.");
    return "redirect:/imageGroups";
  }

  @RequestMapping(value = "/createGroup", method = RequestMethod.POST)
  public String createGroup(@RequestParam("groupTitle") String groupTitle,
      RedirectAttributes redirectAttributes) {
    try {
      int groupId = imageUploadService.createImageGroup(groupTitle);
      redirectAttributes.addFlashAttribute("successMessage",
          "새 그룹 '" + groupTitle + "'이(가) 성공적으로 생성되었습니다. 그룹 ID: " + groupId);
    } catch (Exception e) {
      redirectAttributes.addFlashAttribute("errorMessage", "그룹 생성 중 오류가 발생했습니다.");
    }
    return "redirect:/imageGroups";
  }

  @RequestMapping(value = "/addGroupImage", method = RequestMethod.POST)
  public String addGroupImage(@RequestParam("groupId") int groupId,
      @RequestParam("imageId") int imageId, @RequestParam("orderIndex") int orderIndex,
      RedirectAttributes redirectAttributes) {
    try {
      imageUploadService.addImageToGroup(groupId, imageId, orderIndex);
      redirectAttributes.addFlashAttribute("successMessage", "이미지가 그룹에 성공적으로 추가되었습니다.");
    } catch (Exception e) {
      redirectAttributes.addFlashAttribute("errorMessage", "이미지를 그룹에 추가하는 동안 오류가 발생했습니다.");
    }
    return "redirect:/imageGroups";
  }

  @RequestMapping(value = "/benefit/beCard6", method = RequestMethod.GET)
  public String beCard6(Locale locale, Model model) {
    List<ImageGroupVO> imageGroups = imageUploadService.getAllImageGroups();
    List<ImageUploadVO> images = imageUploadService.listAllImages();

    model.addAttribute("imageGroups", imageGroups);
    model.addAttribute("images", images);
    return "vipsCloneCoding/beCard/beCard6";
  }
}
