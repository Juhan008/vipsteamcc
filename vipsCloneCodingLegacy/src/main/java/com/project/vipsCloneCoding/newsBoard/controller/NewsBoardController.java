package com.project.vipsCloneCoding.newsBoard.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.vipsCloneCoding.newsBoard.service.NewsBoardService;

@Controller
public class NewsBoardController {
  @Autowired
  private NewsBoardService newsBoardService;

  @RequestMapping(value = "/story/storyNewsQ", method = RequestMethod.GET)
  public String storyNewsQ(HttpSession sessoin) {

    sessoin.setAttribute("newsBoardService", newsBoardService);
    return "vipsCloneCoding/story/storyNewsQ";
  }

  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public String main(HttpSession sessoin) {
    sessoin.setAttribute("newsBoardService", newsBoardService);
    return "vipsCloneCoding/main";
  }

  @RequestMapping(value = "/story/storyNewsPrt", method = RequestMethod.GET)
  public String storyNewsPrt(HttpSession sessoin) {

    return "vipsCloneCoding/story/storyNewsPrt";
  }

}
