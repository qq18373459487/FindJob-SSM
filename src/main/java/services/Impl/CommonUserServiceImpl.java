package services.Impl;

import ResponseMessage.ReturnObject;
import mapper.ComUserMapper;
import modle.CommonUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import services.CommonUserService;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Transactional
@Service("CommonUserService")
public class CommonUserServiceImpl implements CommonUserService {
    @Autowired
    private ComUserMapper commonUserMapper;
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

        if(commonUser==null)
        {
            //登录账号或密码错误
            session.setAttribute("message",null);
            System.out.println("一直存在于登录页面");
            return "/sign-in";
        }
        else
        {
            session.setAttribute("message","1");
            session.setAttribute("username",commonUser.getCom_user());
            return "/default";
        }
    }
}
