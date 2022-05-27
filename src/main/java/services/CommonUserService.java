package services;

import ResponseMessage.ReturnObject;
import modle.CommonUser;
import modle.Company;
import modle.PersonMg;
import modle.User;
import org.springframework.ui.Model;


import javax.servlet.http.HttpSession;
import java.util.List;

public interface CommonUserService {

    ReturnObject InsertComUser(CommonUser user, Model model, HttpSession session);

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


}
