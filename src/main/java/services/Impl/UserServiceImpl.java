package services.Impl;

import ResponseMessage.ReturnObject;
import mapper.UserMapper;
import modle.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import services.UserService;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Transactional
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
   public ReturnObject queryUserByLoginNameAndPwd(User user, Model model, HttpSession session)
    {
        //封装参数
        Map<String,Object> map=new HashMap<>();
        map.put("username",user.getUsername());
        map.put("password",user.getPassword());

        //调用方法查询用户
        User user1= userMapper.selectUserByLoginNameAndPWD(map);

        session.setAttribute("username",user.getUsername());
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
}
