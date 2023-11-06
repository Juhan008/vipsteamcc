package com.project.vipsCloneCoding;

import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberShipController {

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
  @RequestMapping(value = "/event/evtHotEventQ", method = RequestMethod.GET)
  public String evtHotEventQ(Locale locale, Model model) {
    return "vipsCloneCoding/evtHotEventQ";
  }

  @RequestMapping(value = "/benefit/beCard", method = RequestMethod.GET)
  public String beCard(Locale locale, Model model) {
    return "vipsCloneCoding/beCard/beCard";
  }

  @RequestMapping(value = "/benefit/beCard2", method = RequestMethod.GET)
  public String beCard2(Locale locale, Model model) {
    return "vipsCloneCoding/beCard/beCard2";
  }

  @RequestMapping(value = "/benefit/beCard3", method = RequestMethod.GET)
  public String beCard3(Locale locale, Model model) {
    return "vipsCloneCoding/beCard/beCard3";
  }

  @RequestMapping(value = "/benefit/beCard4", method = RequestMethod.GET)
  public String beCard4(Locale locale, Model model) {
    return "vipsCloneCoding/beCard/beCard4";
  }

  @RequestMapping(value = "/benefit/beCard5", method = RequestMethod.GET)
  public String beCard5(Locale locale, Model model) {
    return "vipsCloneCoding/beCard/beCard5";
  }

  @RequestMapping(value = "/benefit/beGiftCard", method = RequestMethod.GET)
  public String beGiftCard(Locale locale, Model model) {
    return "vipsCloneCoding/beGiftCard/beGiftCard";
  }

  @RequestMapping(value = "/benefit/beGiftCard2", method = RequestMethod.GET)
  public String beGiftCard2(Locale locale, Model model) {
    return "vipsCloneCoding/beGiftCard/beGiftCard2";
  }

  @RequestMapping(value = "/benefit/giftCard", method = RequestMethod.GET)
  public String giftCard(Locale locale, Model model) {
    return "vipsCloneCoding/giftCard";
  }

  @RequestMapping(value = "/membership/msCjoneQ", method = RequestMethod.GET)
  public String msCjoneQ(Locale locale, Model model) {
    return "vipsCloneCoding/msCjoneQ";
  }

  @RequestMapping(value = "/membership/msManiaQ", method = RequestMethod.GET)
  public String msManiaQ(Locale locale, Model model) {
    return "vipsCloneCoding/msManiaQ/msManiaQ";
  }

  @RequestMapping(value = "/membership/msManiaQ2", method = RequestMethod.GET)
  public String msManiaQ2(Locale locale, Model model) {
    return "vipsCloneCoding/msManiaQ/msManiaQ2";
  }

  @RequestMapping(value = "/membership/msManiaQ3", method = RequestMethod.GET)
  public String msManiaQ3(Locale locale, Model model) {
    return "vipsCloneCoding/msManiaQ/msManiaQ3";
  }

  @RequestMapping(value = "/membership/msManiaQ4", method = RequestMethod.GET)
  public String msManiaQ4(Locale locale, Model model) {
    return "vipsCloneCoding/msManiaQ/msManiaQ4";
  }
}
