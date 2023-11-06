package com.project.vipsCloneCoding;

import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SaladController {

  // private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

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
  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

  @RequestMapping(value = "/mainSaladbar", method = RequestMethod.GET)
  public String mainSaladbar(Locale locale, Model model) {



    return "/vipsCloneCoding/mainSaladbar";
  }

  @RequestMapping(value = "/saladbar", method = RequestMethod.GET)
  public String saladbar(Locale locale, Model model) {



    return "/vipsCloneCoding/saladbar";
  }

  @RequestMapping(value = "/saladBeverage01", method = RequestMethod.GET)
  public String saladBeverage01(Locale locale, Model model) {



    return "/vipsCloneCoding/saladBeverage01";
  }

  @RequestMapping(value = "/saladBeverage02", method = RequestMethod.GET)
  public String saladBeverage02(Locale locale, Model model) {



    return "/vipsCloneCoding/saladBeverage02";
  }

  @RequestMapping(value = "/saladBeverage03", method = RequestMethod.GET)
  public String saladBeverage03(Locale locale, Model model) {



    return "/vipsCloneCoding/saladBeverage03";
  }

  @RequestMapping(value = "/togomenu01", method = RequestMethod.GET)
  public String togomenu01(Locale locale, Model model) {



    return "/vipsCloneCoding/togomenu01";
  }

  @RequestMapping(value = "/togomenu02", method = RequestMethod.GET)
  public String togomenu02(Locale locale, Model model) {



    return "/vipsCloneCoding/togomenu02";
  }

  @RequestMapping(value = "/ingredientInfo", method = RequestMethod.GET)
  public String ingredientInfo(Locale locale, Model model) {



    return "/vipsCloneCoding/ingredientInfo";
  }

  @RequestMapping(value = "/allergy", method = RequestMethod.GET)
  public String allergy(Locale locale, Model model) {



    return "/vipsCloneCoding/allergy";
  }

  @RequestMapping(value = "/allergyDelivery", method = RequestMethod.GET)
  public String allergyDelivery(Locale locale, Model model) {



    return "/vipsCloneCoding/allergyDelivery";
  }
}
