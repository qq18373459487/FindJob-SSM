package services.Impl;


import mapper.UserMapper;
import modle.Article;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import tool.ReturnObject;
import mapper.ComUserMapper;
import mapper.CompanyMapper;
import mapper.PersonMapper;
import modle.CommonUser;
import modle.Company;
import modle.PersonMg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import services.CommonUserService;


import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Transactional
@Service("CommonUserService")
public class CommonUserServiceImpl implements CommonUserService {
    @Autowired
    private ComUserMapper commonUserMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Autowired
    private PersonMapper personMapper;

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private UserMapper userMapper;

    int num=5;
    private int num_article=4;

    @Override
    public ReturnObject InsertComUser(CommonUser user, Model model, HttpSession session,String code)
    {
        Map<String,Object> map=new HashMap<>();
        map.put("com_user",user.getCom_user());
        map.put("com_pwd",user.getCom_pwd());
        map.put("email",user.getEmail());
        //调用service方法查询用户
        ReturnObject returnObject = new ReturnObject();
        int a=0;
        if(session.getAttribute("code"+user.getEmail()).equals(code))
        {
            a= commonUserMapper.insertBycom_user(map);
            personMapper.insertPerson_email(user.getEmail(),user.getCom_user());
        }else
        {
            returnObject.setMessage("验证码错误");
            returnObject.setCode("0");
        }
        if(a==1)
        {
            returnObject.setMessage("注册成功，将于两秒后跳转至登录页面");
            returnObject.setCode("1");
        }
        else
        {
            returnObject.setMessage("注册失败");
            returnObject.setCode("2");
        }
        return returnObject;
    }
    @Override
    public String SelectComUser(CommonUser user, Model model, HttpSession session)
    {
        //封装参数
        Map<String,Object> map=new HashMap<>();
        map.put("email",user.getEmail());
        map.put("com_pwd",user.getCom_pwd());

        //调用service方法查询用户
        CommonUser commonUser= commonUserMapper.selectByCom_user(map);
//        try {
//            PersonMg personMg=personMapper.selectByEmail(commonUser.getEmail());
//            if(personMg.getIdentity().equals("HR"))
//            {
//                session.setAttribute("HR",personMg.getIdentity());
//            }
//        }catch (Exception e)
//        {
//            e.printStackTrace();
//        }
        if(commonUser==null)
        {
            //登录账号或密码错误
            session.setAttribute("message",null);
            return "/sign-in";
        }
        else
        {
            PersonMg personMg= personMapper.selectByEmail(commonUser.getEmail());
            session.setAttribute("role",personMg.getIdentity());
            session.setAttribute("message","1");
            session.setAttribute("username",commonUser.getCom_user());
            session.setAttribute("email",commonUser.getEmail());
            session.setAttribute("company",personMg.getCompany());
            return "/default";
        }
    }

    @Override
    public String SelectPerSonMG(PersonMg personMg, Model model, HttpSession session,String email) {
        personMg=personMapper.selectByEmail(email);
        model.addAttribute("person",personMg);
        return "/account";
    }

    @Override
    public String updatePerSonMG(PersonMg personMg, Model model, HttpSession session) {
        personMapper.updatePerson(personMg);
        return  SelectPerSonMG(personMg,model,session,personMg.getEmail());
    }

    @Override
    public ReturnObject updatePwd(String account,String OldPwd, String NewPwd, Model model, HttpSession session)
    {
        Map<String,Object> map=new HashMap<>();
        map.put("oldpwd",OldPwd);
        map.put("newpwd",NewPwd);
        map.put("account",account);
     int i= commonUserMapper.updateBycom_user(map);
     ReturnObject returnObject=new ReturnObject();
     if(i==0)
     {
         returnObject.setMessage("修改失败");
     }
     else
     {
         returnObject.setMessage("修改成功");
     }
     return returnObject;
    }

    @Override
    public ReturnObject InsertPersonAndCompany(Company company, Model model, HttpSession session)
    {
        ReturnObject returnObject=new ReturnObject();
       int i= companyMapper.insertCompany(company);
        if (i==0)
        {
            returnObject.setMessage("入驻失败，重新输入");
        }else
        {
            returnObject.setMessage("入驻成功");
        }
        return returnObject;
    }

    public List<CommonUser> queryUserPage(int page) {
        int n = this.num;
        int m = n * (page - 1);
        return commonUserMapper.queryUserList(m,n);
    }

    @Override
    public int queryPage() {

        int count = commonUserMapper.queryPage();

        int page;
        if (count%this.num==0) {
            page = count/this.num;
        } else {
            page = count/this.num + 1;
        }
        return page;
    }

    @Override
    public String GetAllUser(Model model, HttpSession session,String page) {
        int max=queryPage();
        int   ReturnPage;
        try {
            ReturnPage=Integer.valueOf(page);
        }catch (Exception e)
        {
            ReturnPage=1;
        }
        //当传过来是空的时候,默认第一页
        if (page == null) {
            ReturnPage = 1;
        } else if (ReturnPage < 1){
            //不能小于第一页
            ReturnPage = 1;
        } else if (ReturnPage > max) {
            //不能大于最大页
            ReturnPage = max;
        }
        //绑定最大页数
        model.addAttribute("maxPage", max);
        //调用service层查询第几页的数据
        List<CommonUser> list=queryUserPage(ReturnPage) ;
        //绑定查询的结果到列表
        model.addAttribute("list",list);
        //绑定当前的页码
        model.addAttribute("page", ReturnPage);
        return "/user/user";
    }

    @Override
    public String deleteCommonUser(String id, Model model, HttpSession session)
    {
        commonUserMapper.deleteBycom_user(Integer.valueOf(id));
        GetAllUser(model,session,null);
        return "user/user";
    }

    @Override
    public String insertUser(CommonUser user, Model model, HttpSession session) {
        commonUserMapper.insertUser(user);
        return GetAllUser(model,session,null);
    }

    @Override
    public String updateUser(CommonUser user, Model model, HttpSession session) {
        commonUserMapper.updateUser(user);
        return GetAllUser(model,session,null);
    }

    @Override
    public ReturnObject VerificationCode(String email,HttpSession session,Model model)
    {
        ReturnObject returnObject=new ReturnObject();
        CommonUser commonUser=commonUserMapper.selectByEmail(email);
        if(commonUser!=null)
        {
            String flag=createCode();
            if(email!=null&&flag!=null)
            {
                sendEmailMessage(email, flag);
            }
            session.setAttribute("code"+email,flag);
            returnObject.setMessage("已发送");
            returnObject.setCode("0");
        }  else if(commonUser==null) {
            returnObject.setMessage("该邮箱不存在");
            returnObject.setCode("1");

        }
        else
        {
            returnObject.setMessage("发送失败");
            returnObject.setCode("2");

        }

        return returnObject;
    }

    //发送注册验证码
    @Override
    public ReturnObject SignVerificationCode(String email,HttpSession session,Model model) {
        ReturnObject returnObject=new ReturnObject();
        CommonUser commonUser=commonUserMapper.selectByEmail(email);
        if(commonUser==null)
        {
           String flag=createCode();
            if(email!=null&&flag!=null)
            {
               sendEmailMessage(email, flag);
            }
            session.setAttribute("code"+email,flag);
            returnObject.setMessage("已发送");
            returnObject.setCode("0");

        }
        else if(commonUser!=null) {
            returnObject.setMessage("该邮箱已存在");
            returnObject.setCode("1");

        }
        else
        {
            returnObject.setMessage("发送失败");
            returnObject.setCode("2");

        }
        return returnObject;
    }

    @Override
    public ReturnObject find_password(CommonUser user, HttpSession session, Model model,String code) {
        ReturnObject returnObject=new ReturnObject();
        int a=0;
        if(session.getAttribute("code"+user.getEmail()).equals(code))
        {
            a=commonUserMapper.update_password(user.getCom_pwd(),user.getEmail());

        }else
        {
            returnObject.setMessage("验证码错误");
            returnObject.setCode("0");
        }
        if(a==1)
        {
            returnObject.setMessage("找回密码成功，将于两秒后跳转至登录页面");
            returnObject.setCode("1");
        }
        else
        {
            returnObject.setMessage("找回密码失败");
            returnObject.setCode("2");
        }
        return returnObject;
    }

    @Override
    public List<Article> queryArticleList(int page) {
        int n = this.num;
        int m = n * (page -1);
        return commonUserMapper.queryArticleList(m,n);
    }

    @Override
    public int queryArticlePage() {
        int count = commonUserMapper.queryArticlePage();
        int page;
        if (count%this.num_article==0) {
            page = count/this.num_article;
        } else {
            page = count/this.num_article + 1;
        }
        return page;
    }

    @Override
    public String getBlog(Model model, HttpSession session, String page) {
        int max=queryArticlePage();
        int   ReturnPage;
        try {
            ReturnPage=Integer.valueOf(page);
        }catch (Exception e)
        {
            ReturnPage=1;
        }

        //当传过来是空的时候,默认第一页
        if (page == null) {
            ReturnPage = 1;
        } else if (ReturnPage < 1){
            //不能小于第一页
            ReturnPage = 1;
        } else if (ReturnPage > max) {
            //不能大于最大页
            ReturnPage = max;
        }

        //绑定最大页数
        model.addAttribute("maxPage", max);
        //调用service层查询第几页的数据
        List<Article> list= queryArticleList(ReturnPage);
        //绑定查询的结果到列表
        model.addAttribute("list",list);
        //绑定当前的页码
        model.addAttribute("page", ReturnPage);
        return "/blog";
    }

    @Override
    public String getBlogDetail(String id, Model model, HttpSession session) {
       Article article= userMapper.selectArticleById(id);
        model.addAttribute("article",article);
        return "blog-details";
    }


    //生成验证码
    public String createCode()
    {
        //生验证码
        String sources = "0123456789abcdefghijklmnopqrstuvwxyz"; // 加上一些字母，就可以生成pc站的验证码了
        Random rand = new Random();
        StringBuffer flag = new StringBuffer();
        for (int j = 0; j < 6; j++) {
            flag.append(sources.charAt(rand.nextInt(30)) + "");
        }
        return String.valueOf(flag);
    }

    //读取邮件发送模版
    public void sendEmailMessage(String email,String code) {
        MimeMessage message = javaMailSender.createMimeMessage();
        try {
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            helper.setSubject("主题");
            helper.setText(buildContent(code + ""), true);
            helper.setTo(email);
            helper.setFrom("2306732673@qq.com");
            javaMailSender.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }





    //加载邮件html模板
    public String buildContent(String title) {

        Resource resource = new ClassPathResource("mail-template.ftl");
        InputStream inputStream = null;
        BufferedReader fileReader = null;
        StringBuffer buffer = new StringBuffer();
        String line = "";
        try {
            inputStream = resource.getInputStream();
            fileReader = new BufferedReader(new InputStreamReader(inputStream));
            while ((line = fileReader.readLine()) != null) {
                buffer.append(line);
            }
        } catch (Exception e) {
//            log.info("发送邮件读取模板失败{}", e);
            e.printStackTrace();
        } finally {
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        //替换html模板中的参数
        return MessageFormat.format(buffer.toString(), title);
    }
}
