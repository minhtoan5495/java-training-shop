package vn.smartdev.controller;import org.slf4j.Logger;import org.slf4j.LoggerFactory;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.stereotype.Controller;import org.springframework.ui.Model;import org.springframework.util.StringUtils;import org.springframework.validation.BindingResult;import org.springframework.web.bind.annotation.ModelAttribute;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.bind.annotation.RequestMethod;import org.springframework.web.bind.annotation.RequestParam;import org.springframework.web.servlet.ModelAndView;import vn.smartdev.user.dao.entity.User;import vn.smartdev.user.dao.model.UserModel;import vn.smartdev.user.exception.UserAlreadyExistsException;import vn.smartdev.user.manager.UserManager;import javax.management.relation.RoleNotFoundException;import javax.servlet.http.HttpServletRequest;import javax.servlet.http.HttpSession;import javax.validation.Valid;import java.text.ParseException;/** * Created by Nguyen on 09/12/2016. */@Controller@RequestMapping(value = "/")public class LoginController {    @Autowired    UserManager userManager;    private Logger logger =  LoggerFactory.getLogger(LoginController.class);    @RequestMapping(value = "/login", method = RequestMethod.GET)    public ModelAndView loginPage(@RequestParam(value = "error",required = false) String error,                                  @RequestParam(value = "logout",	required = false) String logout,                                  HttpServletRequest request,                                  Model model) {        UserModel userModel = new UserModel();        model.addAttribute("userModel", userModel);        ModelAndView modelAndView = new ModelAndView();        if (error != null) {            modelAndView.addObject("error", "Invalid Credentials provided.");            String targetUrl = getRememberMeTargetUrlFromSession(request);            System.out.println(targetUrl);            if(StringUtils.hasText(targetUrl)){                modelAndView.addObject("targetUrl", targetUrl);                modelAndView.addObject("homePage", true);            }        }        if (logout != null) {            modelAndView.addObject("message", "Logged out from SmartDev successfully.");        }        modelAndView.setViewName("signinPage");        return modelAndView;    }    @RequestMapping(value = "/registration", method = RequestMethod.POST)    public String createUser(@Valid UserModel userModel, BindingResult bindingResult, Model model) throws UserAlreadyExistsException, RoleNotFoundException {        model.addAttribute("userModel", userModel);        /*if (bindingResult.hasErrors()) {            // handle error            logger.error("===Got error");            return "signinPage";        } else {            logger.info("=== No error");            // insert into database        }*/        System.out.println("In ra date :"+userModel.getBirthday());        userManager.save(userModel);        return "redirect:/";    }    private String getRememberMeTargetUrlFromSession(HttpServletRequest request){        String targetUrl = "";        HttpSession session = request.getSession(false);        if(session!=null){            targetUrl = session.getAttribute("targetUrl") == null ? ""                    :session.getAttribute("targetUrl").toString();        }        return targetUrl;    }}