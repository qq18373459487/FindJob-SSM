package services.Impl;

import ResponseMessage.ReturnObject;
import mapper.ComUserMapper;
import mapper.CompanyMapper;
import mapper.PersonMapper;
import modle.CommonUser;
import modle.Company;
import modle.PersonMg;
import modle.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import services.CommonUserService;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional
@Service("CommonUserService")
public class CommonUserServiceImpl implements CommonUserService {
    @Autowired
    private ComUserMapper commonUserMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Autowired
    private PersonMapper personMapper;

    int num=5;
    @Override
    public ReturnObject InsertComUser(CommonUser user, Model model, HttpSession session)
    {
        Map<String,Object> map=new HashMap<>();
        map.put("com_user",user.getCom_user());
        map.put("com_pwd",user.getCom_pwd());
        map.put("email",user.getEmail());
        //调用service方法查询用户
        ReturnObject returnObject = new ReturnObject();
        int a = commonUserMapper.insertBycom_user(map);
        personMapper.insertPerson_email(user.getEmail());
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
    @Override
    public String SelectComUser(CommonUser user, Model model, HttpSession session)
    {
        //封装参数
        Map<String,Object> map=new HashMap<>();
        map.put("com_user",user.getCom_user());
        map.put("com_pwd",user.getCom_pwd());

        //调用service方法查询用户
        CommonUser commonUser= commonUserMapper.selectBycom_user(map);
        try {
            PersonMg personMg=personMapper.selectByPersonId(commonUser.getEmail());
            if(personMg.getIdentity().equals("HR"))
            {
                session.setAttribute("HR",personMg.getIdentity());
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }

        if(commonUser==null)
        {
            //登录账号或密码错误
            session.setAttribute("message",null);
            return "/sign-in";
        }
        else
        {
            session.setAttribute("message","1");
            session.setAttribute("username",commonUser.getCom_user());
            session.setAttribute("email",commonUser.getEmail());
            return "/default";
        }
    }

    @Override
    public String SelectPerSonMG(PersonMg personMg, Model model, HttpSession session,String email) {
        personMg=personMapper.selectByPersonId(email);
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
}
