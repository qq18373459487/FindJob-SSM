package controller;


import ResponseMessage.ReturnObject;
import modle.CommonUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import services.CommonUserService;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller

public class CommonUserController {
    @Autowired
    private CommonUserService commonUserService;

    @RequestMapping("/toregister")

    public String toregister()
    {
        return "/sign-up";
    }

    @RequestMapping("/register")

    public @ResponseBody Object Register(@ModelAttribute CommonUser user, Model model, HttpSession session)
    {
        Map<String,Object> map=new HashMap<>();
        map.put("com_user",user.getCom_user());
        map.put("com_pwd",user.getCom_pwd());
        map.put("email",user.getEmail());
        //调用service方法查询用户
        int  a= commonUserService.InsertComUser(map);
        ReturnObject returnObject = new ReturnObject();
        if(a==1)
        {
            returnObject.setCode("1");
        }
        else
        {
            returnObject.setCode("2");
        }
        return returnObject;
    }
    @RequestMapping("/tocommonlogin")

    public String tocommonlogin()
    {
        return "/sign-in";
    }

    @RequestMapping("/commonlogin")
    public  @ResponseBody Object toLogin(@ModelAttribute CommonUser user, Model model, HttpSession session)
    {
        //封装参数
        Map<String,Object> map=new HashMap<>();
        map.put("com_user",user.getCom_user());
        map.put("com_pwd",user.getCom_pwd());

        //调用service方法查询用户
        CommonUser commonUser= commonUserService.SelectComUser(map);

        ReturnObject returnObject=new ReturnObject();
        if(commonUser==null)
        {
            //登录账号或密码错误
            returnObject.setCode("0");
            returnObject.setMessage("用户名或密码错误");
            return returnObject;
        }
        else
        {
            returnObject.setCode("1");
            returnObject.setMessage("登录成功");
        }
        return returnObject;
    }
}
