package com.project.vipsCloneCoding;

import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

  // @RequestMapping(value = "/", method = RequestMethod.GET)
  // public String home(Locale locale, Model model) {
  // logger.info("Welcome home! The client locale is {}.", locale);
  //
  // Date date = new Date();
  // DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG,
  // locale);
  //
  // String formattedDate = dateFormat.format(date);
  //
  // model.addAttribute("serverTime", formattedDate );
  //
  // return "home";
  // }

  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String home(Locale locale, Model model) {
    return "vipsCloneCoding/intro";
  }

  @RequestMapping(value = "/intro", method = RequestMethod.GET)
  public String intro(Locale locale, Model model) {

    return "vipsCloneCoding/intro";
  }

  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public String main(Locale locale, Model model) {

    return "vipsCloneCoding/main";
  }

  @RequestMapping(value = "/story/storyBrandStory", method = RequestMethod.GET)
  public String storyBrandStory(Locale locale, Model model) {

    return "vipsCloneCoding/story/storyBrandStory";
  }

  @RequestMapping(value = "/steak/premiumSteak", method = RequestMethod.GET)
  public String premiumSteak(Locale locale, Model model) {

    return "vipsCloneCoding/steak/premiumSteak";
  }

  @RequestMapping(value = "/store/storeFirstBirthdayQ", method = RequestMethod.GET)
  public String storeFirstBirthdayQ(Locale locale, Model model) {

    return "vipsCloneCoding/store/storeFirstBirthdayQ";
  }

}
