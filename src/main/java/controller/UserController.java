package controller;

import ResponseMessage.ReturnObject;
import modle.CommonUser;
import modle.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import services.UserService;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login()
            //转发进入登陆页面
    { return "/login";}

    @RequestMapping("/index")
    public  @ResponseBody Object toLogin(@ModelAttribute User user, Model model, HttpSession session)
    {
  return userService.queryUserByLoginNameAndPwd(user, model, session);
    }
    @RequestMapping("/login-sucess")
    public String login_sucess()
    {
        return "/index";
    }
    @RequestMapping("/error")
    public String error()
    {
        return "/404";
    }

}
