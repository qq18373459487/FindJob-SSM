package services.Impl;

import ResponseMessage.ReturnObject;
import mapper.UserMapper;
import modle.Company;
import modle.FileModle;
import modle.User;
import modle.WorkList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import services.UserService;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Transactional
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    int num=5;
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
                session.setAttribute("user",user1.getUsername());
            }else
            {
                returnObject.setCode("2");
                returnObject.setMessage("账户已被锁定");
            }
        }
        return returnObject;

    }

    @Override
    public String GetAllFile( Model model, HttpSession session) {
    List<FileModle> list=   userMapper.selectAllFile();
    model.addAttribute("list",list);
    return "/user/fileManage";
    }

    @Override
    public String insertFile(FileModle fileModle) {
        userMapper.insertFile(fileModle);
         return null;
    }

    @Override
    public List<User> queryUserPage(int page)
    {
        int n = this.num;
        int m = n * (page - 1);
        return userMapper.queryUserList(m,n);
         }

    @Override
    public int queryPage() {
        int count = userMapper.queryPage();
        int page;
        if (count%this.num==0) {
            page = count/this.num;
        } else {
            page = count/this.num + 1;
        }
        return page;
    }

    @Override
    public String GetAllUser(User user, Model model, HttpSession session, String page) {
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
        List<User> list= queryUserPage(ReturnPage);
        //绑定查询的结果到列表
        model.addAttribute("list",list);
        //绑定当前的页码
        model.addAttribute("page", ReturnPage);
        return "/user/Manage";
    }

    @Override
    public String deleteUserById(String id, Model model, HttpSession session) {
        userMapper.deleteUserById(Integer.valueOf(id));
        User user=null;
        return GetAllUser(user,model,session,null);
    }

    @Override
    public String updateUserReById(String id, Model model, HttpSession session,String relname)
    {
        if(relname.equals("1"))
        {
            userMapper.updateUserReById(Integer.valueOf(id),"管理员");
        }else {
            userMapper.updateUserReById(Integer.valueOf(id),"受限");
        }

        User user=null;
        return GetAllUser(user,model,session,null);
    }

    @Override
    public String insertUser(User user, Model model, HttpSession session) {
        userMapper.insertUser(user);
        return GetAllUser(user,model,session,null);
    }


}
