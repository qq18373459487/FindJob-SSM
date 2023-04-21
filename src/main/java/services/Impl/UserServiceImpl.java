package services.Impl;

import modle.Article;
import modle.CurriculumVitae;
import tool.ReturnObject;
import mapper.UserMapper;
import modle.FileModle;
import modle.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import services.UserService;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Transactional
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    int num=5;
    int num_article=4;
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
                session.setAttribute("role",user1.getRealname());
            }else if(user1.getRealname().equals("HR"))
            {
                session.setAttribute("user",user1.getUsername());
                session.setAttribute("role",user1.getRealname());
                returnObject.setCode("1");
                returnObject.setMessage("登录成功");
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
        return GetAllUser(null,model,session,null);
    }

    @Override
    public String insertUser(User user, Model model, HttpSession session) {
        userMapper.insertUser(user);
        return GetAllUser(user,model,session,null);
    }

    @Override
    public String GotoCv(User user, Model model, HttpSession session) {
       String username= (String) session.getAttribute("user");
      List<CurriculumVitae> curriculumVitae= userMapper.getAllCvByre_man(username);
      model.addAttribute("CV",curriculumVitae);
      return "/user/CurriculumViteManage";
    }

    @Override
    public String DeleteCv(String id, Model model, HttpSession session) {
        userMapper.deleteCvById(id);
        return GotoCv(null,model,session);
    }

    @Override
    public ReturnObject addArticle(Article article, HttpSession session, Model model) {
        ReturnObject returnObject=new ReturnObject();
        article.setState("未审核");
        Date date = new Date();//获取当前的日期
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String str = df.format(date);//获取String类型的时间
        article.setPost_time(str);
        String user= (String) session.getAttribute("user");
        article.setAuthor(user);
        int i=userMapper.insertArticle(article);
        if(i==0)
        {
            returnObject.setCode("0");
        }else
            returnObject.setCode("1");
        return returnObject;
    }

    @Override
    public List<Article> queryArticleList(int page) {
        int n = this.num_article;
        int m = n * (page -1);
        return userMapper.queryArticleList(m,n);
    }

    @Override
    public int queryArticlePage() {
        int count = userMapper.queryArticlePage();
        int page;
        if (count%this.num_article==0) {
            page = count/this.num_article;
        } else {
            page = count/this.num_article + 1;
        }
        return page;
    }

    @Override
    public String GetAllArticle(Article article, Model model, HttpSession session, String page) {
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
        return "/user/articleManage";
    }

    @Override
    public String deleteArticle(String id, Model model, HttpSession session) {

       int i= userMapper.deleteArticleById(id);
       if(i==1)
       {
           return GetAllArticle(null,model,session,null);
       }else
       {
           return "error";
       }


    }

    @Override
    public ReturnObject  updateArticle( Model model, HttpSession session,Article article) {
        System.out.println("article"+article.toString());
        ReturnObject returnObject=new ReturnObject();
        int i=userMapper.updateArticleById(article);
        if(i==1)
        {
          GetAllArticle(null,model,session,null);
          returnObject.setCode("0");
          return returnObject;
        }else
        {
            returnObject.setCode("0");
            return returnObject;
        }
    }

    @Override
    public String GotoUpdateArticle(String id, Model model, HttpSession session) {
       Article article= userMapper.selectArticleById(id);
       model.addAttribute("article",article);
       return "/user/updateArticle";
    }

    @Override
    public String updateArticleState(String id, String state, Model model, HttpSession session) {
    if(state.equals("1"))
    {
        state="审核通过";
    }else   if(state.equals("0"))

        {
        state="未审核通过";
    }
        userMapper.updateArticleState(id,state);
        return GetAllArticle(null,model,session,null);
    }
}
