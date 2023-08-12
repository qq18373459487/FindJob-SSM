package controller;

import mapper.UserMapper;
import modle.Comment;
import modle.CommonUser;
import modle.Company;
import modle.PersonMg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import services.CommonUserService;
import tool.ReturnObject;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller

public class CommonUserController {
    @Autowired
    private CommonUserService commonUserService;


    @RequestMapping("default")
    public String index()
    {
        return "/default";
    }
    @RequestMapping("/toregister")

    public String toregister()
    {
        return "/sign-up";
    }

    @RequestMapping("/register")

    public @ResponseBody Object Register(@Valid @ModelAttribute CommonUser user, Model model, HttpSession session,String code)
    {
        System.out.println("code:"+code);
        return commonUserService.InsertComUser(user,model,session,code);
    }

    @RequestMapping("/tocommonlogin")

    public String tocommonlogin()
    {
        return "/sign-in";
    }

    @RequestMapping("/commonlogin")
    public  String toLogin(@ModelAttribute CommonUser user, Model model, HttpSession session)
    {
      return commonUserService.SelectComUser(user, model, session);
    }

    @RequestMapping("/Account")

    public String Account(@ModelAttribute PersonMg personMg, Model model, HttpSession session,String email)
    {
        return commonUserService.SelectPerSonMG(personMg, model, session, email);
    }
    @RequestMapping("/SaveAccount")

    public String SaveAccount(@ModelAttribute PersonMg personMg, Model model, HttpSession session)
    {
        return commonUserService.updatePerSonMG(personMg, model, session);
    }
    @RequestMapping("/resetpwd")
    public @ResponseBody Object  resetpwd(String account, String oldpwd,String newpwd, Model model, HttpSession session)
    {
         return commonUserService.updatePwd(account,oldpwd, newpwd, model, session);
    }
    @RequestMapping("/Toresetpwd")
    public String Toresetpwd()
    {
        return "reset-password";
    }


    @RequestMapping("Topostcompany")
    public String Topostcompany()
    {
       return "post-company";
    }

    @RequestMapping("postcompany")
    public @ResponseBody Object postcompany(@ModelAttribute Company company, Model model, HttpSession session)
    {
       return commonUserService.InsertPersonAndCompany(company, model, session);
    }

    @RequestMapping("deleteCommonUser")
    public String deleteCommonUser(String id, Model model, HttpSession session)
    {
        return commonUserService.deleteCommonUser(id, model, session);
    }
    @RequestMapping("/insertUser")
    public String insertUser(@ModelAttribute CommonUser user, Model model, HttpSession session)
    {
        return commonUserService.insertUser(user,model,session);
    }
    @RequestMapping("/user")
    public String user(Model model, HttpSession session, String page)
    {
        return commonUserService.GetAllUser(model,session,page);
    }
    @RequestMapping("/updateCommonUser")
    public String updateCommonUser(@ModelAttribute CommonUser commonUser,Model model, HttpSession session)
    {
        return commonUserService.updateUser(commonUser, model, session);
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session,Model model)
    {
        session.invalidate();
        return "/sign-in";
    }
//    请求验证码接口
    @RequestMapping("/SignVerificationCode")
    @ResponseBody
    public ReturnObject SignVerificationCode(String email,HttpSession session,Model model)
    {
        return  commonUserService.SignVerificationCode(email,session,model);
    }

//  请求找回密码接口
@RequestMapping("/VerificationCode")
@ResponseBody
public ReturnObject VerificationCode(String email,HttpSession session,Model model)
{
    return  commonUserService.VerificationCode(email,session,model);
}

//跳转到找回密码界面
    @RequestMapping("/GotoFindPassword")

    public String GotofindPassword()
    {
        return  "find-password";
    }

//找回密码接口
@RequestMapping("/findPassword")
@ResponseBody
public ReturnObject findPassword(@ModelAttribute CommonUser user,HttpSession session,Model model,String code)
{
    return  commonUserService.find_password(user,session,model,code);
}

    @RequestMapping("blog")
    public String GotoBlog(HttpSession session,Model model,String page)
    {
       return commonUserService.getBlog(model,session,page);

    }

    @RequestMapping("blog-details")
    public String blogDetail(String id,HttpSession session,Model model)
    {
        return commonUserService.getBlogDetail(id,model,session);

    }

    @RequestMapping("postComment")
    @ResponseBody
    public ReturnObject  postComment(Comment comment, HttpSession session, Model model)
    {
        return commonUserService.postComment(comment,model,session);

    }

}
