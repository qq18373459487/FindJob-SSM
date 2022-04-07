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
        //封装参数
        Map<String,Object> map=new HashMap<>();
        map.put("username",user.getUsername());
        map.put("password",user.getPassword());

        //调用service方法查询用户
       User user1= userService.queryUserByLoginNameAndPwd(map);

       //测试登录信息在查询之后的结果（未通过，service正常，mapper也能正常查询到数据，到了这里就停止了）

        ReturnObject returnObject=new ReturnObject();
       if(user1==null)
       {
           //登录账号或密码错误
           returnObject.setCode("0");
           returnObject.setMessage("用户名或密码错误");
           return returnObject;
       }
       else
       {
           //进一步判断账号是否合法
           if(user1.getRealname().equals("管理员"))
           {
               //登录成功
               returnObject.setCode("1");
               returnObject.setMessage("登录成功");
               returnObject.setData(user.getUsername());
           }else
           {
               returnObject.setCode("2");
               returnObject.setMessage("账户已被锁定");
           }
       }
       return returnObject;
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
