package com.project.vipsCloneCoding.user.controller;

import java.util.Map;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.project.vipsCloneCoding.HomeController;
import com.project.vipsCloneCoding.user.domain.UserVO;
import com.project.vipsCloneCoding.user.service.UserService;

@Controller
public class UserController {
  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

  @Autowired
  UserService userService;

  @RequestMapping(value = "/member/join", method = RequestMethod.GET)
  public String join() {

    return "vipsCloneCoding/member/join";
  }

  @RequestMapping(value = "/member/join", method = RequestMethod.POST)
  public String joinPost(@RequestParam Map<String, String> map, HttpSession sessoin) {
    UserVO user = new UserVO(map.get("name"), map.get("phone_number"), map.get("user_id"),
        map.get("pw"), map.get("address"), map.get("birth"));
    userService.join(user);
    return "redirect:/member/login";
  }

  @RequestMapping(value = "/member/login", method = RequestMethod.GET)
  public String login() {

    return "vipsCloneCoding/member/login";
  }

  @RequestMapping(value = "/member/login", method = RequestMethod.POST)
  public String loginPost(@RequestParam Map<String, String> map, HttpSession sessoin) {
    UserVO user = new UserVO(map.get("user_id"), map.get("pw"));
    user = userService.login(user);
    sessoin.setAttribute("isLogin", user.getUserId());
    sessoin.setAttribute("member", user.getMember());
    return "vipsCloneCoding/main";
  }

  @RequestMapping(value = "/member/logout", method = RequestMethod.GET)
  public String logout(HttpSession sessoin) {
    sessoin.setAttribute("isLogin", null);
    return "vipsCloneCoding/main";
  }
}
