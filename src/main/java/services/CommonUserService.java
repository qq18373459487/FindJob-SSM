package services;

import modle.Article;
import tool.ReturnObject;
import modle.CommonUser;
import modle.Company;
import modle.PersonMg;
import org.springframework.ui.Model;


import javax.servlet.http.HttpSession;
import java.util.List;

public interface CommonUserService {

    ReturnObject InsertComUser(CommonUser user, Model model, HttpSession session,String code);

    String SelectComUser(CommonUser user, Model model, HttpSession session);

    String SelectPerSonMG(PersonMg personMg, Model model, HttpSession session,String email);

    String updatePerSonMG(PersonMg personMg, Model model, HttpSession session);

    ReturnObject updatePwd(String account,String OldPwd,String NewPwd,Model model,HttpSession session);

    ReturnObject InsertPersonAndCompany(Company company, Model model, HttpSession session);

    // 分页查询
    List<CommonUser> queryUserPage(int page);

    // 查询页数
    int queryPage();

    String GetAllUser(Model model, HttpSession session,String page);
    String deleteCommonUser(String id,Model model,HttpSession session);

    String insertUser(CommonUser user, Model model, HttpSession session);
    String updateUser(CommonUser user, Model model, HttpSession session);

     //请求验证码
    ReturnObject VerificationCode(String email,HttpSession session,Model model);
    ReturnObject SignVerificationCode(String email,HttpSession session,Model model);
    ReturnObject find_password(CommonUser commonUser,HttpSession session,Model model,String code);

    //获得可查看文章
    List<Article> queryArticleList(int page);

    // 查询文章页数
    int queryArticlePage();

    String getBlog(Model model, HttpSession session,String page);

    String getBlogDetail(String id,Model model,HttpSession session);


}
