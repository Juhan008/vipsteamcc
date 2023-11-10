package com.project.vipsCloneCoding.newsBoard.controller;

import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.project.vipsCloneCoding.newsBoard.dao.NewsBoardDAO;
import com.project.vipsCloneCoding.newsBoard.domain.NewsBoardVO;
import com.project.vipsCloneCoding.newsBoard.service.NewsBoardService;

@Controller
public class NewsBoardController {
  @Autowired
  private NewsBoardService newsBoardService;
  @Autowired
  private NewsBoardDAO newsBoardDAO;

  @RequestMapping(value = "/story/storyNewsQ", method = RequestMethod.GET)
  public String storyNewsQ(HttpSession sessoin, @RequestParam Map<String, String> map) {
    int temp = 1;

    if (map.get("controll") != null) {
      temp = Integer.valueOf(map.get("controll"));
    }
    sessoin.setAttribute("newsBoardService", newsBoardService);
    sessoin.setAttribute("lastPost", newsBoardService.getLastTen(temp));
    return "vipsCloneCoding/story/storyNewsQ";
  }

  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public String main(HttpSession sessoin) {
    sessoin.setAttribute("lastPost", newsBoardService.getLastTen());
    return "vipsCloneCoding/main";
  }

  @RequestMapping(value = "/story/storyNewsPrt", method = RequestMethod.GET)
  public String storyNewsPrt(HttpSession sessoin, @RequestParam Map<String, String> map) {
    newsBoardService.upView(Integer.valueOf(map.get("currentPost")));
    sessoin.setAttribute("newsBoardService", newsBoardService);
    sessoin.setAttribute("currentPost", Integer.valueOf(map.get("currentPost")));
    return "vipsCloneCoding/story/storyNewsPrt";
  }

  @RequestMapping(value = "/story/storyNewsWrite", method = RequestMethod.GET)
  public String storyNewsWrite(HttpSession sessoin) {

    if (sessoin.getAttribute("member").equals("admin")
        || sessoin.getAttribute("member").equals("sub_admin")) {
      return "vipsCloneCoding/story/storyNewsWrite";
    } else {
      return "vipsCloneCoding/story/storyNewsQ";
    }
  }

  @RequestMapping(value = "/story/storyNewsWrite", method = RequestMethod.POST)
  public String storyNewsWritePost(HttpSession sessoin, @RequestParam Map<String, String> map,
      @RequestParam("file") MultipartFile image) {

    if (sessoin.getAttribute("member").equals("admin")
        || sessoin.getAttribute("member").equals("sub_admin")) {

      NewsBoardVO newsboard = new NewsBoardVO((String) sessoin.getAttribute("userId"),
          map.get("title"), map.get("boardContents"));

      newsBoardDAO.add(newsboard);

      try {
        newsBoardService.imageUpload(image, "story/imgUpload",
            newsBoardDAO.getNewsBoardFinalTable().getId());
      } catch (Exception e) {
        e.printStackTrace();
      }

      return "redirect:/story/storyNewsQ";
    } else {
      return "redirect:/story/storyNewsQ";
    }
  }

  @RequestMapping(value = "/story/storyNewsDelete", method = RequestMethod.POST)
  public String storyNewsDelete(@RequestParam Map<String, String> map) {
    newsBoardDAO.Delete(Integer.valueOf(map.get("deletePost")));
    return "redirect:/story/storyNewsQ";
  }

  @RequestMapping(value = "/story/storyNewsEdit", method = RequestMethod.GET)
  public String storyNewsEdit(@RequestParam Map<String, String> map, HttpSession sessoin) {
    sessoin.setAttribute("newsBoardService", newsBoardService);
    sessoin.setAttribute("currentPost", Integer.valueOf(map.get("editPost")));
    return "vipsCloneCoding/story/storyNewsEdit";
  }

  @RequestMapping(value = "/story/storyNewsEdit", method = RequestMethod.POST)
  public String storyNewsEditPost(@RequestParam Map<String, String> map, HttpSession sessoin,
      @RequestParam("file") MultipartFile image) {

    if (sessoin.getAttribute("member").equals("admin")
        || sessoin.getAttribute("member").equals("sub_admin")) {
      try {
        newsBoardService.imageUpload(image, "story/imgUpload",
            Integer.valueOf(map.get("currentPost")));
      } catch (Exception e) {
        e.printStackTrace();
      }
      try {
        newsBoardDAO.update(Integer.valueOf(map.get("currentPost")), map.get("userId"),
            map.get("title"), map.get("boardContents"));
      } catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
    return "redirect:/story/storyNewsQ";
  }

}
